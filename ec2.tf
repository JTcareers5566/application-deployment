resource "aws_instance" "Python-Server" {
  ami                    = "ami-06744fbd0847bf4f5"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.Key1.Key1
  vpc_security_group_ids = [aws_security_group.SG1.id]
  subnet_id              = aws_subnet.subnet.id

  connection {
    type        = "ssh"
    user        = "ec2-user" 
    private_key = file("/C/Users/Workstation/Downloads/DemoKey1.pem") 
    host        = self.public_ip
   }

   provisioner "file" {
    source      = "../Flask Application/app.py" 
    destination = "/home/ec2-user/app.py" 
   }

   provisioner "remote-exec" {
    inline = [
      "sudo yum update -y", 
      "sudo yum install -y python3-pip",
      "cd /home/ec2-user",
      "sudo pip3 install flask",
      "sudo python3 app.py",
    ]
   }
}
