#!/bin/bash
newman run collections/reqres.postman_collection.json -e environments/dev.postman_environment.json -d data/data.json -r cli,html  --reporter-html-export tests/report.html
