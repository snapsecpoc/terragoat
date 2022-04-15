resource "aws_s3_bucket" "kics_test_s3" {
  provider      = aws.us-east-1
  arn           = "arn:aws:s3:::sd-ml-experiment"
  bucket        = "sd-ml-experiment"
  force_destroy = false
  request_payer = "BucketOwner"
  tags          = {}


}

resource "aws_s3_bucket_policy" "kics_test_policy" {
  provider = aws.us-east-1
  bucket   = aws_s3_bucket.sd-ml-experiment.id
  policy   = file("policy-sd-ml-experiment.json")
}
