BIN=node_modules/.bin

test:
	make lint
	$(BIN)/mocha 'test/specs/**/*.js'
	doxdox index.js --layout markdown --parser index.js | diff DOCUMENTATION.md -

lint:
	$(BIN)/eslint index.js
	$(BIN)/eslint 'test/specs/**/*.js'

docs:
	doxdox index.js --layout markdown --parser index.js --output DOCUMENTATION.md

.PHONY: test
