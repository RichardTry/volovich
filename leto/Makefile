# just type make run and relax...
only:
	docker-compose up -d

mongo-sink:
	cd ./MongoSinkScript && make run_b

run:
	docker-compose up -d
	sleep 5
	make mongo-sink

tables:
	docker-compose exec -it postgres psql -U postgres university -f /autofill/script2.sql
	
drop:
	docker-compose exec -it postgres psql -U postgres university -c "DROP SCHEMA mirea CASCADE;"
	
pg:
	docker-compose exec -it postgres psql -U postgres university
	
fill:
	python3 Scripts/Postgres/postgre_autofill.py

autofill_pg:
	pip install psycopg2 && \
		(cd ./Scripts/Postgres && python3 postgre_autofill.py)

# it's necessary to use only this command
stop:
	docker stop mongo-sink-service && docker-compose down
