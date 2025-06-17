# 🔄 API Tests with Postman & Newman

![Newman](https://img.shields.io/badge/Newman-4FA94D?style=flat-square&logo=postman&logoColor=white)
![Postman](https://img.shields.io/badge/Postman-FF6C37?style=flat-square&logo=postman&logoColor=white)
![License](https://img.shields.io/github/license/catellic/qa-postman-newman-tests?style=flat-square)
![Last Commit](https://img.shields.io/github/last-commit/catellic/qa-postman-newman-tests?style=flat-square)


Run the collection, with data and env file, generating a report with following command:
newman run collections/reqres.postman_collection.json -e environments/dev.postman_environment.json -d data/data.json -r cli,html --reporter-html-export tests/report.html

Otherwise use the bash script.