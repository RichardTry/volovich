#!/bin/bash

CONTAINER="postgresql"

docker cp ./into_container.sh $CONTAINER:/tmp/into_container.sh
docker cp ./autofill_TT.sh $CONTAINER:/tmp/autofill_TT.sh
docker cp ./autofill_Vis.sh $CONTAINER:/tmp/autofill_Vis.sh
docker cp ./create_partitions.sh $CONTAINER:/tmp/create_partitions.sh
docker cp ./trigger_partition.sh $CONTAINER:/tmp/trigger_partition.sh

docker exec $CONTAINER bash -c ". /tmp/into_container.sh $1 $2 $3" > ../../output/$CONTAINER.out

if [ $( cat ../../output/$CONTAINER.out | grep "$CONTAINER" | wc -l ) -eq 1 ]; then
  echo "The output file contains the expected output"
  echo
  cat ../../output/$CONTAINER.out
else
  echo 'The output file does not contain the expected output'
fi