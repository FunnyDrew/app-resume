test:
	bin/rails test

setup-app:
	cp -n .env.example .env || true
	bin/setup
	make db-reset
	npm i
	npm run build
	
lint: lint-code lint-style

lint-code:
	bundle exec rubocop
	bundle exec slim-lint app/views/

.PHONY: test