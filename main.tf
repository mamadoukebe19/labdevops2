  instance_type = local.env_vars.instance_type
  subnet_id     = data.aws_subnet.selected.id

  vpc_security_group_ids = [
    aws_security_group.ssh_access.id,
    aws_security_group.nginx_web.id
  ]

  tags = merge(local.tags, {
    Name = "MyInstanceAMI3"
  })
}


