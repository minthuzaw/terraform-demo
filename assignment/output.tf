output "bucket_name" {
  value = length(aws_s3_bucket.my_bucket) > 0 ? aws_s3_bucket.my_bucket[0].arn : ""
}

output "public_ip" {
  value = "${aws_instance.web_server.public_ip}"
}
