## Objective:
Create an ec2 instace in the private subnet using the following variables file:

terraform.tfvars:
```
vpc_id             = "vpc-0a3e011f354250f05"
private_subnet_ids = ["subnet-023efc115ab9d9586", "subnet-0c3d760f6d1cfb638"]
public_subnet_ids  = ["subnet-06bc475c9204eb8e5", "subnet-02f2d5e36e548b1a3"]
instance_size = "t3.small"
open_ports = [80, 443]
```

1. Create a directory called: tf-ec2-instance
2. Create the following files:
    - variables.tf
    - providers.tf
    - main.tf    
3. Fill the files with the required code. 

## Questions:
- Is the ec2 instance reachable from internet
- If you have to add an Application Load Balancer (ALB), on which subnet you would add it?
- What rules would the security group attached to the ALB should have?
