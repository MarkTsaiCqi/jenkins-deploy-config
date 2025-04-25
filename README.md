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

## 第一次啟動


當 Jenkins server 第一次啟動時，會顯示解鎖畫面，要求輸入初始管理員密碼。

打開 Jenkins UI：
在瀏覽器輸入：http://localhost:8090

到 Jenkins 容器中取出密碼：

```bash
docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```