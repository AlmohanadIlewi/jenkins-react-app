
ssh IP-Public -i /home/mohanad/.ssh/my-accesskey.pem -l ubuntu


/* 
 value       = distinct([
    for instance in aws_instance.ec2_instance :
    {
      id   = aws_instance.ec2_instance.id,
      ip   = aws_instance.ec2_instance.public_ip,
      name = aws_instance.ec2_instance.tags
    }
  ])

This modification uses the "distinct" function to filter out duplicate instances based on their id, ip, and name. 
This should give you a list of unique EC2 instances.

*/