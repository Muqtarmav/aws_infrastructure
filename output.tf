#Create an output to display the database endpoint
output "db_endpoint" {
  value = aws_db_instance.sql_db.endpoint
}



output "endpoint" {
  value = aws_eks_cluster.cluster.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.cluster.certificate_authority[0].data
}

