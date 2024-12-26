package main

import (
	"context"
	"encoding/json"
	"log"
	"net/http"
	"strconv"
	"sync"

	"github.com/jackc/pgx/v5/pgxpool"
)

var idsCache map[int]struct{}
var mu sync.RWMutex

func main() {
	dsn := "postgresql://postgres:postgres@localhost:5432/postgres?sslmode=disable"

	pgxPool, err := pgxpool.New(context.Background(), dsn)
	if err != nil {
		panic(err)
	}

	mux := http.NewServeMux()

	idsCache = make(map[int]struct{})

	mux.Handle("/nocache", initHandler(pgxPool))
	mux.Handle("/cache", initHandlerCache(pgxPool))

	http.ListenAndServe(":10000", mux)
}

func initHandlerCache(p *pgxpool.Pool) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		id := r.URL.Query().Get("id")
		if id == "" {
			http.Error(w, "id is required", http.StatusBadRequest)
			return
		}

		idInt, err := strconv.Atoi(id)
		if err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
		}

		log.Println("CACHE: ", idInt)

		mu.RLock()
		if _, ok := idsCache[idInt]; ok {
			mu.RUnlock()
			log.Println("Cache hit")
			w.Header().Set("Content-Type", "application/json")
			if err := json.NewEncoder(w).Encode(idInt); err != nil {
				http.Error(w, err.Error(), http.StatusInternalServerError)
			}
			return
		}
		mu.RUnlock()

		log.Println("Cache miss")

		rows, err := p.Query(context.Background(), "SELECT id FROM test WHERE id = $1", id)
		if err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
			return
		}
		defer rows.Close()

		var ids []int
		for rows.Next() {
			var id int
			if err := rows.Scan(&id); err != nil {
				http.Error(w, err.Error(), http.StatusInternalServerError)
				return
			}
			ids = append(ids, id)
		}

		if err := rows.Err(); err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
			return
		}

		if len(ids) == 0 {
			http.Error(w, "Not found id", http.StatusNotFound)

			return
		}

		mu.Lock()
		idsCache[ids[0]] = struct{}{}
		mu.Unlock()

		w.Header().Set("Content-Type", "application/json")
		if err := json.NewEncoder(w).Encode(ids); err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
		}

	})
}

func initHandler(p *pgxpool.Pool) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		id := r.URL.Query().Get("id")
		if id == "" {
			http.Error(w, "id is required", http.StatusBadRequest)
			return
		}

		log.Println("NO CACHE: ", id)

		rows, err := p.Query(context.Background(), "SELECT id FROM test WHERE id = $1", id)
		if err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
			return
		}
		defer rows.Close()

		var ids []int
		for rows.Next() {
			var id int
			if err := rows.Scan(&id); err != nil {
				http.Error(w, err.Error(), http.StatusInternalServerError)
				return
			}
			ids = append(ids, id)
		}

		if err := rows.Err(); err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
			return
		}

		if len(ids) == 0 {
			http.Error(w, "Not found id", http.StatusNotFound)

			return
		}

		w.Header().Set("Content-Type", "application/json")
		if err := json.NewEncoder(w).Encode(ids); err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
		}

	})
}
