
build:
	#docker image rm mongo_sink_service;
	docker build --network=host -t mongo_sink_service .;

run_b:
	make build;
	docker start --rm --name mongo-sink-service -d --network \
		leto_shared_net mongo_sink_service
run:
	docker start --rm --name mongo-sink-service -d --network \
		leto_shared_net mongo_sink_service
