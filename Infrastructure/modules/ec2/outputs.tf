output "ec2_id" {
  description = "EC2 instance information"
  value       = distinct([
    for instance in aws_instance.ec2_instance :
    {
      id   = aws_instance.ec2_instance.id,
      ip   = aws_instance.ec2_instance.public_ip,
      name = aws_instance.ec2_instance.tags
    }
  ])
}



