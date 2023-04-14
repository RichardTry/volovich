# docker-compose-psql
```
https://github.com/debezium/debezium-examples/tree/main/tutorial#using-postgres
Что сделать:
    InfluenceDB - ?
    Пхнуть туда логи какие-нибудь
    Как работают коннекторы джавовские - где лежат, и где искать

# Start the topology as defined in 
                https://debezium.io/documentation/reference/stable/tutorial.html

export DEBEZIUM_VERSION=2.0

docker-compose -f docker-compose-postgres.yaml up

# Start Postgres connector
curl -i -X POST -H "Accept:application/json" -H  \
    "Content-Type:application/json" \
    http://localhost:8083/connectors/ \
    -d @register-postgres.json

# Consume messages from a Debezium topic
docker-compose -f docker-compose-postgres.yaml exec kafka \
    /kafka/bin/kafka-console-consumer.sh \
    --bootstrap-server kafka:9092 \
    --from-beginning \
    --property print.key=true \
    --topic dbserver1.inventory.customers

# Modify records in the database via Postgres client
docker-compose -f docker-compose-postgres.yaml exec postgres env \
PGOPTIONS="--search_path=inventory" bash -c 'psql -U $POSTGRES_USER postgres'

# Shut down the cluster
docker-compose -f docker-compose-postgres.yaml down
```
# es_search
```
# Получить последнее изменение
curl -XGET "http://localhost:9200/dbserverpostgres.public.students/_search?pretty" -H 'Content-Type: application/json' -d'
{
  "size": 1,
  "_source": ["after"],
  "sort": [{"ts_ms": "desc"}]
}'
```
# postgre insertion
```
1. Развернуть контейнеры командой (из корня проекта):
    docker-compose -f docker-compose_cp.yml up
2. Командой "docker network inspect softarchitecture_shared_net" узнать ip-адрес
контейнера postgresql и вписать его в переменную "host" в начале каждого файла в
директории ./Scripts/Postgres/ в формате "xxx.xx.xx.xx"
3*. Если необходимо, вписать нужные параметры в другие переменные этих файлов
4. Подключиться к postgres с помощью psql (нужно качать отдельно) или с помощью
"docker-compose -f docker-compose_cp.yml exec -it postgres psql -U postgres
postgres", и создать базу данных "university"
5. Подключиться к новой бд: "docker-compose -f docker-compose_cp.yml exec -it
postgres psql -U postgres university"
6. Из файла INSERT_PgSQL.txt вставить сначала все таблицы, потом все остальное.
7. Для автозаполнения таблиц "timetable" и "visit" нужно запустить скрипт
"autofill_TT.sh" из директории ./Scripts/Postgres. У него два параметра: 1 -
число, указывающее количество дней для заполнения; 2 - дата в формате
"yyyy-mm-dd", с которой будет заполняться. 
Пример: "./autofill_TT.sh 60 2022-09-01" - заполнит 60 дней, начиная с 1
сентября 2022 года. 
```
