resource "aws_ecs_task_definition" "task" {
  family                    = "flaskApp"
  network_mode              = "awsvpc"
  requires_compatibilities  = [ "FARGATE" ]
  cpu                       = 256
  memory                    = 512

  container_definitions = jsonencode([
    {
        name            = "flask-app"
        image           = "public.ecr.aws/p7s3o4g8/flask:latest" #URI
        cpu             = 256
        memory          = 512
       
    }
  ])
}