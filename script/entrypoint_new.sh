#!/usr/bin/env bash

AIRFLOW_HOME="/usr/local/airflow"
CMD="airflow"
TRY_LOOP="20"

$CMD initdb
exec $CMD webserver && sleep 5 &
exec $CMD scheduler