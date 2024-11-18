resource "aws_instance" "ravi" {
  count = var.instance_count
  ami           = var.ami_id  
  instance_type = var.instance_type
  key_name = "hello"
  #vpc_security_group_ids = ["sg-0a37a6600fe074bb4"]       
       
  #subnet_id     = aws_subnet.subnet.id 

  tags = {  
    Name = var.instance_name
    
  }
}