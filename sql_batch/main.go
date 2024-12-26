package main

import (
	"context"
	"log"
	"time"

	"github.com/Masterminds/squirrel"
	"github.com/jackc/pgx/v5/pgxpool"
)

const maxBatch = 65000

var currentId = 0

func generateId() []int {
	out := make([]int, 0)
	tmpId := 0
	for i := currentId + 1; i < currentId+maxBatch; i++ {
		tmpId++
		out = append(out, i)
	}

	currentId = tmpId

	return out
}

func main() {
	pool, err := pgxpool.New(context.Background(), "postgresql://postgres:postgres@localhost:5432/postgres?sslmode=disable")
	if err != nil {
		log.Fatal(err)
	}

	_, err = pool.Exec(context.Background(), "TRUNCATE TABLE test;")
	if err != nil {
		log.Fatal(err)
	}

	err = insertMany(pool)
	if err != nil {
		log.Fatal(err)
	}

	err = insertBatch(pool)
	if err != nil {
		log.Fatal(err)
	}
}

func insertMany(p *pgxpool.Pool) error {
	ids := generateId()

	now := time.Now()

	q := `INSERT INTO test(id) VALUES($1)`

	for _, id := range ids {
		_, err := p.Exec(context.Background(), q, id)
		if err != nil {
			return err
		}
	}

	done := time.Now()

	log.Println("Insert many: ", done.Sub(now).String())

	return nil
}

func insertBatch(p *pgxpool.Pool) error {
	ids := generateId()

	now := time.Now()

	q := squirrel.Insert("test")

	for _, id := range ids {
		q = q.Values(id)
	}

	query, args, err := q.PlaceholderFormat(squirrel.Dollar).ToSql()

	if err != nil {
		return err
	}

	_, err = p.Exec(context.Background(), query, args...)
	if err != nil {
		return err
	}

	done := time.Now()

	log.Println("Insert batch: ", done.Sub(now).String())

	return nil
}
