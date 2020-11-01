# ----------------------------------------#
#
#       | Terraform Variables file |
#
# ----------------------------------------#
# File: variables.tf
# Author: Vithursan Thangarasa (vithursant)
# ----------------------------------------#

variable "my_region" {
  type        = string
  default     = "us-east-1"
  description = "The AWS region to deploy into (i.e. us-east-1)"
}

variable "avail_zone" {
  type        = string
  default     = "us-east-1b"
  description = "The AWS availability zone location within the selected region (i.e. us-east-1a)."
}

# only use if want to restrict to my ip
# variable "my_ip" {
#   type    = string
#   default = "161.69.22.122/32"
# }

variable "my_cidr_block" {
  type    = string
  default = "10.0.0.0/24"
}

variable "my_key_pair_name" {
  type        = string
  default     = "aws-services"
  description = "The name of the SSH key to install onto the instances."
}

variable "ssh-key-dir" {
  default     = "~/.ssh/"
  description = "The path to SSH keys - include ending '/'"
}

variable "instance_type" {
  type        = string
  default     = "g3s.xlarge" # "p2.xlarge" price about $.50/hr, # g3s.xlarge $.50 per hour
  description = "The instance type to provision the instances from (i.e. p2.xlarge)."

}

variable "spot_price" {
  type        = string
  default     = "0.50"
  description = "The maximum hourly price (bid) you are willing to pay for the specified instance, i.e. 0.10. This price should not be below AWS' minimum spot price for the instance based on the region."
}

variable "ebs_volume_size" {
  type        = string
  default     = "100"
  description = "The Amazon EBS volume size (1 GB - 16 TB)."
}

variable "ami_id" {
  type        = string
  default     = "ami-01aad86525617098d" # Default AWS Deep Learning AMI (Ubuntu)
  description = "The AMI ID to use for each instance. The AMI ID will be different depending on the region, even though the name is the same."
}

variable "num_instances" {
  type        = string
  default     = "1"
  description = "The number of AWS EC2 instances to provision."
}

variable "block_duration_minutes" {
  type        = string
  default     = "360"
  description = "The number of minutes to have this ec2 running. Needs to be multiples of 60"
}

