BIN ?= ./node_modules/.bin
DIR ?= $(dir $(lastword $(MAKEFILE_LIST)))
LINT_SRC_JS ?= .
LINT_SRC_JSON ?= package.json ./**/*.json

lint: lint-js lint-json
lint-js:
	@echo "Linting JavaScript..."
	@$(BIN)/eslint $(LINT_SRC_JS)
lint-json:
	@echo "Linting JSON..."
	@$(BIN)/jsonlint -q $(LINT_SRC_JSON)
lint-fix:
	@echo "Linting JavaScript and try to fix..."
	@$(BIN)/eslint --fix $(LINT_SRC_JS)

.PHONY: lint lint-js lint-json lint-fix
