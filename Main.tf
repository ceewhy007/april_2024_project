provider "aws" {
region = "us-west-1"
profile = "cyril"

}

resource "aws_instance" "jenkins-server" {

    ami = "ami-0928267676686789"
    instance_type = "t2.micro"
    user_data = <<EOF
#!/in/bash
echo " copy from here"

EOF
}
