# 🔄 API Test Automation with Postman & Newman

This repository contains two API testing projects built with Postman and executed via Newman + GitHub Actions.

* ✅ **`projects/reqres/`** – A project to test the [ReqRes](https://reqres.in) API
* 🔐 **`projects/fakestore/`** – A more advanced project with authentication and chained requests using [Fake Store API](https://fakestoreapi.com)

---

## 📆 Projects Overview

### 🔹 1. ReqRes – Basic User Flow

📁 `projects/reqres-basic/`
This project tests the ReqRes demo API with a simple CRUD flow for users.

**Test coverage:**

* User CRUD

  * `GET /users/:id`
  * `POST /users`
  * `PUT /users/:id`
  * `DELETE /users/:id`
* Auth

  * `POST /register`
  * `POST /login`
* 🔁 Data-driven tests using `data.json`
* ✅ Fully CI-integrated

---

### 🔹 2. Fake Store – Advanced Flow

📁 `projects/fakestore-advanced/`
This project focuses on authentication, product and user management, using real-world flows such as:

**Test coverage:**

* `POST /auth/login` → Save and reuse token
* `GET /products`, `GET /carts/user/:id`
* ❌ Negative test cases (invalid login, unauthorized access)
* 🔁 Data-driven scenarios with chaining
* 🔐 Header injection + variable scoping

> Although the API does not enforce authentication on endpoints, this collection applies Bearer token usage to simulate real-world security practices.

---

## 🛠️ Requirements

* [Node.js](https://nodejs.org/)
* [Newman](https://www.npmjs.com/package/newman)

Install Newman globally:

```bash
npm install -g newman
```

---

## ▶️ Running the Collections

You can run the Postman collections manually or in CI:

### 💡 GitHub Actions

Manually trigger the workflow from the Actions tab:
![Run Newman Tests](https://github.com/catellic/qa-postman-newman-tests/actions/workflows/newman-tests.yml/badge.svg)

### 🚀 Local execution

Using the included `run.sh` script:

```bash
cd projects/fakestore/
./run.sh
```

Or directly with Newman CLI:

```bash
newman run collections/<collection>.postman_collection.json \
  -e environments/<env>.postman_environment.json \
  -d data/data.json \
  -r cli,html \
  --reporter-html-export tests/report.html
```

---

## 📚 Tech Stack

* Postman
* Newman
* Node.js
* GitHub Actions

---

## 👤 Author

**Christian Catelli**
Quality Assurance Engineer · QA Automation Specialist
🌐 [https://catellic.github.io](https://catellic.github.io)

---

## 📄 License

![Newman](https://img.shields.io/badge/Newman-4FA94D?style=flat-square\&logo=postman\&logoColor=white)
![Postman](https://img.shields.io/badge/Postman-FF6C37?style=flat-square\&logo=postman\&logoColor=white)
![License](https://img.shields.io/github/license/catellic/qa-postman-newman-tests?style=flat-square)
![Last Commit](https://img.shields.io/github/last-commit/catellic/qa-postman-newman-tests?style=flat-square)
