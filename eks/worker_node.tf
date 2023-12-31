resource "aws_eks_node_group" "private-ng" {
  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = "private_ng"
  node_role_arn   = aws_iam_role.worker.arn
  subnet_ids      = [var.private_subnet_id_1,var.private_subnet_id_2]
  ami_type = "AL2_x86_64"
  capacity_type = "ON_DEMAND"
  disk_size = "20"
  instance_types = ["t3.small"]
  scaling_config {
    desired_size = 1
    max_size     = 3
    min_size     = 1
  }
  force_update_version = false
  version = "1.28"

 remote_access {
    ec2_ssh_key = var.ssh_key
  }
  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly,
  ]
    tags = {
        name = "worker-node-1"
    }
}