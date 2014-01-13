#!/bin/bash

port=9291
curr_dir=`pwd`

benchmark() {
  name=$1
  folder=$2
  path=$3

  cd $folder
  pwd
  bundle install
  bundle exec thin -e production -p $port start &
  #bundle exec mizuno -E production -p $port &
  pid=$!
  cd $curr_dir

  # Wait for the server to start.
  until curl "http://localhost:${port}/${path}" > /dev/null 2>&1
  do
    sleep 1
  done

  echo "Benchmarking: ${name}..."
  ab -qn 1000 -c 100 -g ${folder}.dat "http://localhost:${port}/${path}" > /dev/null 2>&1
  echo "${name} Benchmark Done"

  echo "Stopping Server..."
  kill -9 $pid
  echo "Server Stopped"
}

benchmark "Angus" "angus" "angus-benchmark/api/0.1/users"
benchmark "Sinatra" "sinatra" "users"
benchmark "Rails Api" "rails-api" "users"
benchmark "Grape" "grape" "v1/users"

gnuplot benchmark.plot

rm angus.dat
rm sinatra.dat
rm rails-api.dat
rm grape.dat
