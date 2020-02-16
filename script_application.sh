#!/bin/bash

sudo docker stop flask
sudo docker rm flask
sudo docker run --name flask -it -d -p 8080:8080 $(docker build -q .)
