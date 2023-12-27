# Build
```
docker build -t stunserver:1.0 -f Dockerfile .
```

# Deploy
```
docker-compose up -d
```

# View logs
```
docker logs stunserver -f -n100
```
