BUILD=$(CURDIR)/bin
$(shell mkdir -p $(BUILD))
export GOPATH=$(go env GOPATH)

.PHONY: mod test cover build-mgr clean help

mod: ## Runs mod
	go mod verify
	go mod tidy

test: ## Runs all the tests
	echo 'mode: atomic' > coverage.txt && go test --count=1 -covermode=atomic -coverprofile=coverage.txt -v -race \
	-timeout=30s ./...

cover: test ## Runs all the tests and opens the coverage report
	go tool cover -html=coverage.txt

build: ## Builds the project
	go build -o $(BUILD)/manager

clean: ## Remove temporary files
	go clean
	rm -rf $(BUILD)
	rm -rf coverage.txt

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := build-mgr
