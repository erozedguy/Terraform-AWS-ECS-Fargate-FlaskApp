resource "aws_internet_gateway" "i-gtwy" {
  vpc_id = "${aws_vpc.ecs-vpc.id}"

  tags = {
    Name = "ecs-i-gateway"
  }
}