all:
	@echo "  Настройка Postgres..."
	@PGPASSWORD=111 PGOPTIONS='--client-min-messages=warning' psql -q -h 172.17.0.2 -U kirill -d university -f create_all.sql