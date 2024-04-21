# Package
version       = "1.0.0"
author        = "github/Refacktor"
description   = "A package to compile nim apps for AWS Serverless Application Model (SAM)"
license       = "MIT"
srcDir        = "src"
binDir        = "bin"
bin           = @["bootstrap"]

# Dependencies
requires "nim >= 2.0.0"
