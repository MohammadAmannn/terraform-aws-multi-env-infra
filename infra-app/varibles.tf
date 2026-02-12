variable "env" {
    description = "This is the environment for my infra"
    type        = string
    
  
}
variable "bucket_name" {
    description = "This is the name of the bucket to be created"
    type        = string
    
  
}
variable "instance_count" {
    description = "Number of EC2 instances to create"
    type        = number
}

variable "aws_instance_type" {
    description = " The type of EC2 instance to create (e.g., t2.micro)"
    type        = string
    
  
}

variable "aws_ami_id" {
    description = "The ID of the AMI to use for the EC2 instance"
    type        = string
    
  
}
variable "hash_key" {
  description = "The hash key for the DynamoDB table"
  type        = string
}