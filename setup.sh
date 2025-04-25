#!/bin/bash
git clone https://kaipfeiffer:$1@github.com/kaipfeiffer/anacoda.git
git clone https://kaipfeiffer:$1@github.com/kaipfeiffer/anacoda.git
git clone https://kaipfeiffer:$1@github.com/kaipfeiffer/tramp.git
git clone https://kaipfeiffer:$1@github.com/kaipfeiffer/poolworx.git
git clone https://kaipfeiffer:$1@github.com/kaipfeiffer/ridepool.git
cd ridepool
docker run --rm --interactive --tty --volume $PWD:/app composer install
cd ../anacoda
docker run --rm --interactive --tty --volume $PWD:/app composer install
cd ../poolworx
docker-compose up -d 