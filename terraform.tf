terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.30.0"
    }
  }
#    backend "s3"{
#   bucket="my-tf-test-bucket-remote-123456789"
#   key="terraform.tfstate"
#   region="ap-south-1"
#   dynamodb_table="State_table_For_Terraform"
# }
}


