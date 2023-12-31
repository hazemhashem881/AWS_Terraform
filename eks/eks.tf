resource "aws_eks_cluster" "eks" {
  name     = "eks_cluster"
  role_arn = aws_iam_role.master.arn
  vpc_config {
    subnet_ids = [var.public_subnet_id_1,var.public_subnet_id_2,
                  var.private_subnet_id_1,var.private_subnet_id_2]
    endpoint_private_access = true
    security_group_ids = [ aws_security_group.worker_sg.id ]
  }


  tags = {
    Name = "eks"
  }
  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.AmazonEKSServicePolicy,
  ]
}