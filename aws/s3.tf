resource "aws_s3_bucket" "hagaspa-bucket-1" {
  bucket = "hagaspa-bucket-1"
}

resource "aws_s3_bucket" "hagaspa-bucket-2" {
  bucket = "hagaspa-bucket-2"
}

resource "aws_s3_bucket_public_access_block" "access_block_1" {
  bucket = "${aws_s3_bucket.hagaspa-bucket-1.id}"

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_public_access_block" "access_block_2" {
  bucket = "${aws_s3_bucket.hagaspa-bucket-2.id}"

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
