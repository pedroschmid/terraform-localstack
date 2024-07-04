resource "aws_s3_bucket" "this" {
  bucket              = var.bucket_name
  object_lock_enabled = var.object_lock_enabled
  force_destroy       = var.force_destroy

  tags = {
    Terraform = true
  }
}
