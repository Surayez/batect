resource "aws_s3_bucket" "test_bkt" {
  bucket = "surayez-tf-test-bucket"
  acl    = "public"

  tags = {
    Name        = "Surayez Tf bucket"
    Environment = "Dev"
  }
}
