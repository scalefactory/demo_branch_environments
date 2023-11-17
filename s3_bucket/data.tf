

# Get our current region
data "aws_region" "current" {
}


# Get our caller identity
data "aws_caller_identity" "current" {
}

# Get our AWS partition - eg "aws" (default), or "aws-us-gov" (US GovCloud regions)"
data "aws_partition" "current" {
}
