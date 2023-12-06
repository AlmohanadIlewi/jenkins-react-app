variable "ami_id" {
  type = string
  default = "ami-06dd92ecc74fdfb36"
    

}

variable "instance_type" {
  type = string
  default = "t2.small"
    
}

variable "key_name" {
  type    = string
  default = "jenkins-key"
}

variable "instance_name" {
  type    = string
  default = "EC2_Jenkins"
}


# "//wsl.localhost/Debian/home/mohanad/.ssh/jenkins-key.pem"