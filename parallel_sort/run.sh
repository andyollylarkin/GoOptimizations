#!/usr/bin/env bash

echo Run parallel sort \[100_000_000\]
go run ./main.go -method parallel -dataset 100000000
echo  -e "\n\n"

echo Run linear sort \[100_000_000\]
go run ./main.go -method linear -dataset 100000000
echo -e "\n\n"

echo Run parallel sort \[1_000_000\]
go run ./main.go -method parallel -dataset 1000000
echo -e "\n\n"

echo Run linear sort \[1_000_000\]
go run ./main.go -method linear -dataset 1000000
echo -e "\n\n"

echo Run parallel sort \[100_000\]
go run ./main.go -method parallel -dataset 100000
echo -e "\n\n"

echo Run linear sort \[100_000\]
go run ./main.go -method linear -dataset 100000
echo -e "\n\n"