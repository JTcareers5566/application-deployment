resource "aws_key_pair" "Key1" {
  key_name   = "Key1" 
  public_key = file("/C/Users/Workstation/Downloads/DemoKey1.pem")
}
