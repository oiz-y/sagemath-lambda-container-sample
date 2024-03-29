# sagemath-lambda-container-sample:star:

## Overview:eyes:

This sample code is for running the [sagemath docker image](https://hub.docker.com/r/sagemath/sagemath) with [AWS Lambda](https://aws.amazon.com/lambda/).

## Usage:white_check_mark:

### Build image

```
$ git clone https://github.com/oiz-y/sagemath-lambda-container-sample.git
$ cd sagemath-lambda-container-sample/sage-demo
$ docker build -t sage-demo .
```

### Push image

```
$ aws ecr get-login-password --region ${AWS_REGION} | docker login --username AWS --password-stdin ${ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com
$ docker tag sage-demo:latest ${ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/sage-demo:latest
$ docker push ${ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/sage-demo:latest
```

### Invoke Lambda function

Update the ECR repository image referenced by the Lambda function and invoke the Lambda function.

## App URL:globe_with_meridians:

The following is an example of an application using sagemath docker with AWS Lambda container.

### https://galoisapp.com/

Project link : https://github.com/oiz-y/sage-lambda-container-app

## Reference:book:

- https://www.sagemath.org/
- https://github.com/sagemath/sage

## License:bell:

- [MIT](https://github.com/oiz-y/sagemath-lambda-container-sample/blob/main/LICENSE)
