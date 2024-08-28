# DB address
output "address" {
  value = "${aws_db_instance.demo_db.address}"
}

# DB port
output "port" {
  value = "${aws_db_instance.demo_db.port}"
}
