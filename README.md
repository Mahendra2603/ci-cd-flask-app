# CI/CD Pipeline for Flask App using GitHub Actions and Docker

## 🚀 Project Overview

This project demonstrates a complete **CI/CD pipeline** for a simple Flask-based Python web application. It shows how to automate build, test, and deployment steps using **GitHub Actions**, **Docker**, and shell scripts.

It is designed for **learning purposes**, especially for those aiming for **DevOps, Release Engineer, or Cloud Engineer roles**.

---

## 🧱 Technologies Used

- **Python 3.9+**
- **Flask Framework**
- **Docker** & DockerHub
- **GitHub Actions (CI/CD)**
- **Shell Scripts for Deployment**
- **GitHub Repository** for Source Control

---

## 📁 Project Structure

```
ci-cd-flask-app/
├── app.py                # Main Flask Application
├── requirements.txt      # Python dependencies
├── Dockerfile            # Docker image build instructions
├── deploy.sh             # Deployment script
├── rollback.sh           # Rollback script
├── .github/workflows/
│   └── main.yml          # GitHub Actions CI/CD workflow
└── README.md             # Project Documentation
```

---

## 🔄 CI/CD Workflow

### ✅ Continuous Integration (CI)
Triggered on every `push` to the repository:
- Checkout code
- Install Python dependencies
- Linting (optional)
- Run unit tests (if added)
- Build Docker image

### 🚀 Continuous Deployment (CD)
After a successful build:
- Push Docker image to DockerHub
- Run deployment shell script to start a new container
- Optionally stop old container or rollback if needed

---

## 🐳 Docker Commands Used

To build the Docker image locally:
```bash
docker build -t flask-ci-cd-app .
```

To run the container:
```bash
docker run -d -p 5000:5000 flask-ci-cd-app
```

---

## 🧪 How to Run Locally

1. **Clone the repository**
```bash
git clone https://github.com/YourUsername/ci-cd-flask-app.git
cd ci-cd-flask-app
```

2. **Install dependencies**
```bash
pip install -r requirements.txt
```

3. **Run the app**
```bash
python app.py
```

4. Visit in browser: `http://localhost:5000`

---

## 📦 How to Deploy

Using the provided shell script:
```bash
chmod +x deploy.sh
./deploy.sh
```

To rollback to previous version:
```bash
./rollback.sh
```

---

## 📌 What You'll Learn

- How to write a `Dockerfile` for Python projects
- How to configure GitHub Actions for CI/CD
- How to automate deployments using shell scripts
- How Docker containers help in consistent deployment
- Basics of rollback mechanisms

---

## 📄 Use Cases

- Showcase in **DevOps/Release Management** resumes
- Learn end-to-end deployment automation
- Demonstrate hands-on experience during placement interviews

## 🏁 Final Note

This project is a **perfect demonstration of CI/CD pipeline** for a beginner-intermediate DevOps engineer.
