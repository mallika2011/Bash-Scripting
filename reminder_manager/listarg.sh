#!/usr/bin/env bash

read -p "Please enter an reminder title " arg



awk -F "\"*,\"*" -v body="$arg" '{ if($2==body) {print}}' rem.txt | sort -k4 -t',' -n | column -s, -t

