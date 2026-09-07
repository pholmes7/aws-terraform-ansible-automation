resource "aws_s3_bucket" "project_bucket" {
  bucket_prefix = "${var.project_name}-"

  tags = {
    Name    = "${var.project_name}-bucket"
    Project = var.project_name
  }
}

