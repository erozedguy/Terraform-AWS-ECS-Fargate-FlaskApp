resource "aws_ecs_service" "svc" {
  name              = "app-flask"
  cluster           = "${aws_ecs_cluster.ecs-cluster.id}"
  task_definition   = "${aws_ecs_task_definition.task.id}"
  desired_count     = 1
  launch_type       = "FARGATE"

  
  network_configuration {
    subnets          = [ "${aws_subnet.pub-subnet.id}" ]
    security_groups  = [ "${aws_security_group.sg1.id}" ]
    assign_public_ip = true
  }
}