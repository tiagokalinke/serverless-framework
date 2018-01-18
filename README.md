# Serverless Framework Dockerfile

## Image contents
- [x] Node.js 6.10 (Compatible with AWS Lambda)
- [x] Serverless
- [x] Serverless Offline
- [x] DynamoDB Local

## Intallation
Before to up this image, run the command:
```shell
$ docker run -e SLS_PORT=3000 -e DDB_PORT=8000 {IMAGE_NAME} npm install
$ docker run -e SLS_PORT=3000 -e DDB_PORT=8000 {IMAGE_NAME} sls dynamodb install
```

## Requirement enviroments
Name | Description
-----|------------
**SLS_PORT** | Serverless Offline Port
**DDB_PORT** | DynamoDB Local Port


#### docker-compose.yml file
```yaml
version: '3'

services:
  SERVICE_NAME:
    image: tiagokalinke/docker-serverless-framework
    ports:
      - "3000:3000"
      - "8000:8000"
    environment:
      - SLS_PORT=3000
      - DDB_PORT=8000
```
