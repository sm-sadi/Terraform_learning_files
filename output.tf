output "instanc_ip_address" {
  value = aws_instance.First-terraform.private_ip
    #  = resourceType.resourceName.what is the ourput...
}

# output "db_instance_addr" {
#     value = aws_db_instance.db_instace.address
# }