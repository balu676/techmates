variable "target_region" {
    type = string
    default = "us-west-2"
  
}
variable "ami_id" {
    type = string
    default = "dfsahjhflsdhjlh"
  
}
variable "instance_size" {
    type = string
    default = "t2.micro"
  
}
variable "vpc_id" {
    type = string
  
}
variable "private_subnet_ids" {
    type = list(string)
  
}
variable "public_subnets_ids" {
    type = list(string)
  
}
variable "open_ports" {
    type = list(number)
    default = [80, 443,]
  
}