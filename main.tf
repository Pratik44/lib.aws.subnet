module "vpc" {
   source = "git::git@github.com:Pratik44/lib.aws.vpc"
}




resource "aws_subnet" "public_sub" {
    vpc_id = "${module.vpc.vpc_id}"
    cidr_block = "10.0.1.0/24"
    tags = {
        Name = "Public-subnet"
    }
}

resource "aws_subnet" "private_sub" {
    vpc_id = "${module.vpc.vpc_id}"
    cidr_block = "10.0.2.0/24"
    tags = {
        Name = "Private-subnet"
    }
}
