#
# Nim bootstrap for AWS Lambda Custom Environment using Zip Packaging.
# Do not rename this module:
# the executable must be named `bootstrap` for AWS Lambda to work.
#

import awslambda, myapp

when isMainModule:
  startLambda(myapp.handler)