# AWS SAM Hello World with API Gateway Endpoint in Nim

Builds and deploys a "Hello World" AWS Lambda with API Gateway endpoint, in Nim.

## Quick Start

CLI commands assume you're at the top-level project folder.

### 1. If you already have Nim compiler and AWS SAM installed & configured:

```
sam build
sam deploy --guided
```

### 2. If you have nothing, but you have Docker:

```
# build a container with AWS utilities, Nim compiler, and compile the application code:
docker build -t nim-builder .

# deploy the application to AWS, using credentials in $HOME/.aws
docker run -v $HOME/.aws:/root/.aws -it nim-builder \
    sam deploy --stack-name test-nim --region us-west-2 --resolve-s3 --capabilities CAPABILITY_IAM
```

### 3. Test it

Look carefully at the output from `sam deploy` to get the correct URL, then run `curl`:

`curl https://xxxxxxxxxxxx.execute-api.us-west-2.amazonaws.com/Prod/hello/`

Expected output: `Hello from Nim to API User!`

## Performance

It's small. And it's fast.

For the trivial Hello World, with Logging to CloudWatch:

- Package size is 110kb.

- Cold-start is around 10ms to 40ms.

- Warm execution time is 2ms. Two. Milliseconds.

# TO-DO

The `{{ cookiecutter.project_name }}` stuff to enable this to work with `sam init` has not been implemented.

So the way to use this project right now is to start with `git clone` and implement whatever you need in `myapp.nim`.
