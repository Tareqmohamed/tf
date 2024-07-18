resource "aws_instance" "gog" {
    ami = "ami-0b72821e2f351e396"
    instance_type = "t2.micro"
    security_groups = ["${aws_security_group.sg.name}"]
    key_name= "mykey"
    tags ={
        Name= "myInstance"
    }
}

