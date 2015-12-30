#!/bin/bash

# Test if there is instances running
kill $(ps aux | grep mongodb.conf | grep config | awk '{print $2}')

rm -rf rs1/db
rm -rf rs2/db
rm -rf rs3/db

mkdir rs1/db
mkdir rs2/db
mkdir rs3/db

cd rs1
mongod --config mongodb.conf --fork

cd ../rs2
mongod --config mongodb.conf --fork

cd ../rs3
mongod --config mongodb.conf --fork