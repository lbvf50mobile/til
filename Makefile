.DEFAULT_GOAL := f

f:	
	go fmt 20230713_Thursday/20230713.go
.PHONY:f

v:	
	go vet 20230713_Thursday/20230713.go 2>&1 | sed 's/vet\://'
.PHONY:v
