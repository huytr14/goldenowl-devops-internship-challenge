# Golden Owl DevOps Internship Challenge 

Hey! This is my submission for the **Golden Owl DevOps Internship Challenge**.  
I set up a small Node.js app, containerized it with Docker, and built a CI/CD pipeline using GitHub Actions.  
The app is deployed on AWS EC2 and returns a fun JSON message 

---

## Quick Info
- **Language:** Node.js (Express)
- **Container:** Docker
- **CI/CD:** GitHub Actions
- **Registry:** Docker Hub → `huytr14/go-devops-challenge`
- **Cloud:** AWS EC2 (Ubuntu 22.04)
- **Live URL:** [http://3.131.133.24/](http://3.131.133.24/)

Response looks like:
```json
{"message": "Welcome warriors to Golden Owl!"}
```

---

## CI/CD Overview
- **CI:** Builds Docker image and pushes to Docker Hub whenever I push to `main`
- **CD:** Automatically deploys to EC2 after CI succeeds
- **Feature branches:** Trigger a smaller test workflow to check everything still runs fine

---

## How I Set It Up
1. Built a simple Express app (`server.js`)
2. Added a `Dockerfile` to containerize it
3. Created GitHub Action workflows:
   - `ci.yml` → build & push image
   - `ci-feature.yml` → run tests for feature branches
   - `deploy.yml` → deploy to EC2 using SSH
4. Added required secrets in repo settings
5. Deployed to EC2 & verified the live endpoint works 🚀

---

## Secrets Used
| Secret Name | Description |
|--------------|-------------|
| `DOCKERHUB_USERNAME` | My Docker Hub username |
| `DOCKERHUB_TOKEN` | Docker Hub access token |
| `EC2_HOST` | Public IP of EC2 |
| `EC2_USER` | Default EC2 user (ubuntu) |
| `EC2_SSH_KEY` | Private SSH key for GitHub Actions |

---

## Local Run
```bash
cd src
npm install
npm start
curl http://localhost:3000
```
Expected response:
```json
{"message": "Welcome warriors to Golden Owl!"}
```

---

## Small Diagram (idea)
```
GitHub → Docker Hub → EC2 → Live site
```
Everything happens automatically once I push new code 😄

---

## 👏 Credits
Made by **Tran Gia Huy (huytr14)**  
for **Golden Owl DevOps Internship Challenge** 🚀
