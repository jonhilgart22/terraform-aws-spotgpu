# ----------------------------------------#
#
#       | Terraform Outputs file |
#
# ----------------------------------------#
# File: outputs.tf
# ----------------------------------------#

output "id" {
  value = ["${aws_spot_instance_request.jh_dl_custom_spot.*.id}"]
}

output "key-name" {
  value = ["${aws_spot_instance_request.jh_dl_custom_spot.*.key_name}"]
}

output "spot_bid_status" {
  description = "The bid status of the AWS EC2 Spot Instance request(s)."
  value       = ["${aws_spot_instance_request.jh_dl_custom_spot.*.spot_bid_status}"]
}

output "spot_request_state" {
  description = "The state of the AWS EC2 Spot Instance request(s)."
  value       = ["${aws_spot_instance_request.jh_dl_custom_spot.*.spot_request_state}"]
}

output "public_dns" {
  description = "The  public dns."
  value       = ["${aws_spot_instance_request.jh_dl_custom_spot.*.public_dns}"]
}
