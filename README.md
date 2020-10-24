# Portainer Https
A quick and dirty repo that I use to quickly setup a basic portainer installation with https enabled, not suitable for production.

## Usage
- Go into **./certs** and run **gen_certs.sh**
```bash
cd certs && ./gen_certs.sh && cd ..
```
- Run docker compose
```bash
docker-compose up -d
```