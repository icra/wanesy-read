#!/bin/bash

#wmc wanesy password
password=$1

#login
curl -s -X POST "https://wmc-poc.wanesy.com/gms/application/login" \
  -H "accept: application/json" \
  -H "Content-Type: application/json" \
  -d "{\"login\":\"wmc107\",\"password\":\"$password\"}" > login.json

#guarda token bearer
bearer_token=$(cat login.json|awk -F'"token":' '{print $2}'| cut -d\" -f2 )
rm login.json

#GET data uplinks
curl -s -X GET "https://wmc-poc.wanesy.com/gms/application/dataUp" \
  -H "accept: application/json" \
  -H "Authorization: Bearer $bearer_token" \
  | json_pp
