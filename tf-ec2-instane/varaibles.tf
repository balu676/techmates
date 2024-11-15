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
    default = "vpc-0a3e011f354250f05"
  
}
variable "private_subnet_ids" {
    type = list(string)
    default = ["subnet-023efc115ab9d9586", "subnet-0c3d760f6d1cfb638"]
  
}
variable "public_subnets_ids" {
    type = list(string)
    default = ["subnet-06bc475c9204eb8e5", "subnet-02f2d5e36e548b1a3"]
  
}
variable "open_ports" {
    type = list(number)
    default = [80, 443,]
  
}