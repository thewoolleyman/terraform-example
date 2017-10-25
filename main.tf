variable "availability_zone" {
  default = "ca-central-1b"
}

provider "aws" {
  profile = "chad-terraform-example"
  region = "ca-central-1"
}

resource "aws_instance" "example" {
  ami = "ami-7e57ea1a"
  instance_type = "t2.micro"

}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnet_ids" "all" {
  vpc_id = "${data.aws_vpc.default.id}"
}

data "aws_subnet" "default" {
  vpc_id            = "${data.aws_vpc.default.id}"
  default_for_az    = true
  availability_zone = "${var.availability_zone}"
}
