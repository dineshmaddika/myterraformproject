# AKIAXIYMRUIA7EUNN47V
# HIDjK6LMcNBiofB+t0t3uh7Gic5/03KlTHwFP7sb 
 
# varibles
variable "myaccess_key" { }
variable "mysecret_key" { }
variable "myregion" {default = "us-east-1" }


# provider
 provider "aws" {
  access_key = "${var.myaccess_key}"
  secret_key = "${var.mysecret_key}"
  region = "${var.myregion}"
 }  

# resources

resource "aws_instance" "myterraforminstance" {
ami = "ami-061dbd1209944525c"
instance_type = "t2.micro"
key_name = "mykeypair"
  
}

# outputs
output "myinstancerID" {value = aws_instance.myterraforminstance.id}

