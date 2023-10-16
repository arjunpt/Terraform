terraform {
  backend "s3" {
    bucket         = "abhishek-s3-demo-xyz" # we need a bucket, region and encryption 
    key            = "abhi/terraform.tfstate" #if we ahve any prefix to the file terraform.tfstate
                                              #once configured state file will created at the s3 bucket, so an folder abhi will create and inside it there contain state file
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
