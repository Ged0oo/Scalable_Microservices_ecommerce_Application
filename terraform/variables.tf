variable "aws_region" {
  default = "us-west-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "spring"
}

variable "public_key_path" {
  description = "Path to your public key"
  default     = "~/.ssh/spring.pub"
}
