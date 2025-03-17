terraform {
    backend "s3" {
      bucket = "bpbbymybucket07"
      key = "state"
      region = "us-east-1"
    }
}