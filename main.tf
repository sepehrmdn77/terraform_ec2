module "ec2_instance_name_2" {
  source       = "./module/ec2"
  key_name     = "key_pair_name"          # Here is the key pair
  machine_name = "machine_${count.index+1}" # Here is the instance name
  count        = 4                        # Instances count
}

# module "ec2_instance_name_1" {
#   source       = "./module/ec2"
#   key_name     = "key_pair_name" # Here is the key pair
#   machine_name = "exmaple_2"     # Here is the instance name
# }

# resource "aws_instance" "machinename" {
#   ami           = var.ami_id
#   instance_type = var.instance_type
#   key_name      = var.key_name

#   tags = {
#     Name  = var.machine_name
#     Created_By = "terraform"
#   }
# }

# 1.terraform import machinename2.web i-12345abcd
# 2.
# resource "aws_instance" "machinename2" {
#   ami           = var.ami_id2
#   instance_type = var.instance_type
#   key_name      = var.key_name

#   tags = {
#     Name  = var.machine_name2
#     Created_By = "terraform"
#   }
# }