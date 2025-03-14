locals {
  name   = var.AWS_EKS_CLUSTER_NAME
  region = var.AWS_REGION

  vpc_cidr = var.AWS_VPC_CIDR
  azs      = ["${var.AWS_REGION}a", "${var.AWS_REGION}b"]

  public_subnets  = [var.PUBLIC_SUBNET_1, var.PUBLIC_SUBNET_2]
  private_subnets = [var.PRIVATE_SUBNET_1, var.PRIVATE_SUBNET_2]
  intra_subnets   = [var.INTRA_SUBNET_1, var.INTRA_SUBNET_2]

}

variable "AWS_EKS_CLUSTER_NAME" {
	description = "The name of the Kubernetes cluster"
	default     = "superk8s-cluster"
}

variable "AWS_REGION" {
	description = "The region"
	default     = "us-east-1"
}

variable "AWS_VPC_CIDR" {
	default     = "10.123.0.0/16"
}

variable "PUBLIC_SUBNET_1" {
	default     = "10.123.1.0/24"
}

variable "PUBLIC_SUBNET_2" {
	default     = "10.123.2.0/24"
}

variable "PRIVATE_SUBNET_1" {
	default     = "10.123.3.0/24"
}

variable "PRIVATE_SUBNET_2" {
	default     = "10.123.4.0/24"
}

variable "INTRA_SUBNET_1" {
	default     = "10.123.5.0/24"
}

variable "INTRA_SUBNET_2" {
	default     = "10.123.6.0/24"
}
