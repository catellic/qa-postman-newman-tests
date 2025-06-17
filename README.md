# 🔄 API Test Automation with Postman & Newman

This repository contains two API testing projects built with Postman and executed via Newman + GitHub Actions.

- ✅ **`projects/reqres/`** – A project to test the [ReqRes](https://reqres.in) API
- 🔐 **`projects/fakestore/`** – A more advanced project with authentication and chained requests using [Fake Store API](https://fakestoreapi.com)

---
## 📦 Projects Overview

### 🔹 1. ReqRes – Basic User Flow

📁 `projects/reqres-basic/`  
This project tests the ReqRes demo API with a simple CRUD flow for users.

**Test coverage:**
- User CRUD
        - `GET /users/:id`
        - `POST /users`
        - `PUT /users/:id`
        - `DELETE /users/:id`
- Auth
        - `POST /register`
        - `POST /login` 
- 🔁 Data-driven tests using `data.json`
- ✅ Fully CI-integrated

---

### 🔹 2. Fake Store – Advanced Flow

📁 `projects/fakestore-advanced/`  
This project focuses on authentication, product and user management, using real-world flows such as:

**Planned coverage:**
- `POST /auth/login` → Save and reuse token
- `GET /products`, `GET /carts/user/:id`
- ❌ Negative test cases (invalid login, unauthorized access)
- 🔁 Data-driven scenarios with chaining
- 🔐 Header injection + variable scoping

---

## 🛠 Requirements

- [Node.js](https://nodejs.org/)
- [Newman](https://www.npmjs.com/package/newman)

Install Newman globally:

```bash
npm install -g newman
```

## Run collection

You can run the postman collection manually using the github action configured.

Following you can see last test result:

![Run Newman Tests](https://github.com/catellic/qa-postman-newman-tests/actions/workflows/newman-tests.yml/badge.svg)

Alternative ways to launch collection:

- Use run.sh file locally from this repository
- CLI: newman run collections/{{project_name}}.postman_collection.json -e environments/{{env}}.postman_environment.json -d data/data.json -r cli,html --reporter-html-export tests/report.html


---

![Newman](https://img.shields.io/badge/Newman-4FA94D?style=flat-square&logo=postman&logoColor=white)
![Postman](https://img.shields.io/badge/Postman-FF6C37?style=flat-square&logo=postman&logoColor=white)
![License](https://img.shields.io/github/license/catellic/qa-postman-newman-tests?style=flat-square)
![Last Commit](https://img.shields.io/github/last-commit/catellic/qa-postman-newman-tests?style=flat-square)
