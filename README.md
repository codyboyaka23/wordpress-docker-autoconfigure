# wordpress automatic docker development environment installation

### from the host machine
```bash
docker compose up -d
sudo chown -R {your-username}:{your-username} wordpress
docker compose run --no-deps -i wp-dev-wpcli-service wp core check-update --allow-root
```