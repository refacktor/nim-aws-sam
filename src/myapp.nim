import awslambda, json, times
#
# AWS Lambda Handler
#
proc handler*(event: JsonNode, context: LambdaContext): JsonNode =
  echo "Hi from nim to CloudWatch! Invocation will timeout at: ", context.deadline.format("yyyy-MM-dd'T'HH:mm:ss'.'fff")

  %*{
    "statusCode": 200,
    "body": "Hello from Nim to API User!"
  }
