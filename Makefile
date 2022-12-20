build:
	docker-compose build

db:
	docker-compose up

dev:
	cargo watch -x run

test:
	cargo test

# standalone test
test-s:
	cargo test --no-default-features

dev:
	sqlx db create
	sqlx migrate run
	cargo watch -x run