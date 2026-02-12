module "dev-infra" {
    source = "./infra-app"
    env = "dev"
    bucket_name = "my-dev-bucket"
    instance_count = 1
    aws_instance_type = "t3.micro"
    aws_ami_id = "ami-019715e0d74f695be" 
    hash_key = "studentID"
}
module "Prod-infra" {
    source = "./infra-app"
    env = "prod"
    bucket_name = "my-prod-bucket"
    instance_count = 2
    aws_instance_type = "t3.small"
    aws_ami_id = "ami-019715e0d74f695be" 
    hash_key = "studentID"
}
module "stg-infra" {
    source = "./infra-app"
    env = "stg"
    bucket_name = "my-stg-bucket"
    instance_count = 1
    aws_instance_type = "t3.micro"
    aws_ami_id = "ami-019715e0d74f695be" 
    hash_key = "studentID"
}

# Amazon Linux 2 AMI (HVM), SSD Volume Type
  
