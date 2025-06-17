# 🔄 API Tests with Postman & Newman

This repository contains a Postman collection that automates testing of the [ReqRes](https://reqres.in) public API.

### ✅ Covered Test Scenarios
- `GET /users/:id` – Retrieve a single user
- `POST /users` – Create a user
- `PUT /users/:id` – Update user details
- `DELETE /users/:id` – Delete a user
- 🧪 Data-driven tests with `data/data.json`

---

## 🛠 Requirements

- [Node.js](https://nodejs.org/)
- [Newman](https://www.npmjs.com/package/newman)

Install Newman globally:

```bash
npm install -g newman
```

![Newman](https://img.shields.io/badge/Newman-4FA94D?style=flat-square&logo=postman&logoColor=white)
![Postman](https://img.shields.io/badge/Postman-FF6C37?style=flat-square&logo=postman&logoColor=white)
![License](https://img.shields.io/github/license/catellic/qa-postman-newman-tests?style=flat-square)
![Last Commit](https://img.shields.io/github/last-commit/catellic/qa-postman-newman-tests?style=flat-square)
