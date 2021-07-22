resource "aws_route_table" "pub-table" {
  vpc_id    = "${aws_vpc.ecs-vpc.id}"
}

resource "aws_route" "pub-route" {
  route_table_id         = "${aws_route_table.pub-table.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.i-gtwy.id }"
}

resource "aws_route_table_association" "as-pub" {
  route_table_id = "${aws_route_table.pub-table.id}"
  subnet_id      = "${aws_subnet.pub-subnet.id}"  
}