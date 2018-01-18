# Serverless Framework Dockerfile

## Image contents
- [x] Node.js 6.10 (Compatible with AWS Lambda)
- [x] Serverless
- [x] Serverless Offline
- [x] DynamoDB Local

## Intallation
Before to up this image, run the command:
```shell
$ docker run {IMAGE_NAME} npm install
$ docker run {IMAGE_NAME} sls dynamodb install
```

## Up
$ docker run {IMAGE_NAME} sls offline start
