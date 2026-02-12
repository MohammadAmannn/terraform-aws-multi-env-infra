data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "this" {
  bucket = "${var.env}-${var.bucket_name}-${data.aws_caller_identity.current.account_id}"
}