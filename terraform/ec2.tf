resource "aws_instance" "web1" {
  ami           = "ami-0dee22c13ea7a9a67"   
  instance_type = "t2.micro"
  key_name      = "new-key-pair"
 

  tags = {
    Name = "my-instance"
   
  }
}
