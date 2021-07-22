resource "aws_subnet" "pub-subnet" {
  vpc_id            = "${aws_vpc.ecs-vpc.id}"
  availability_zone = "${var.azs}"
  cidr_block        = "${var.subnet-ip}"
  map_public_ip_on_launch = true

  tags = {
    Name = "pub-subnet"
  }
}