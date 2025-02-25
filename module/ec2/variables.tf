variable "ami" {
  default     = "ami-00710ab5544b60cf7"
  type        = string
  description = "This is the machine ami"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "key_name" {}
variable "machine_name" {}