# Jenkins Deployment Config

This repository contains configuration files for deploying a standalone Jenkins server via Docker Compose.

## Prerequisites

- Docker
- Docker Compose

## Usage

1. Clone this repo and start Jenkins:

```bash
chmod +x scripts/start_jenkins.sh
./scripts/start_jenkins.sh
```

2. Access Jenkins UI at: [http://localhost:8090](http://localhost:8090)

3. Initial setup:
   - Unlock Jenkins using the password from `/var/jenkins_home/secrets/initialAdminPassword`
   - Install suggested plugins (Pipeline + HTML Publisher)

4. Default ports:
   - Jenkins UI: `8090`
   - Agent Port: `50000`

---

This Jenkins container supports running Docker-based builds using `docker-compose`.
