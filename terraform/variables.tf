terraform {
  required_version = ">= 0.15"
}

variable "profile" {
  default = ""
}

variable "vpc_name" {
  description = "Name of the VPC your validator will run in"
  default = "validator-vpc"
}

variable "region" {
  type        = string
  description = "AWS Region. Only necessary when creating cluster manually"
  default = "us-east-1"
}

variable "node_locations" {
  type        = list
  default     = [ "us-east-a", "us-east-b" ]
  description = "Zones in which to create the nodes"
}

variable "kubernetes_namespace" {
  type = string
  description = "kubernetes namespace to deploy the resource into"
  default = "kusama"
}

variable "kubernetes_name_prefix" {
  type = string
  description = "kubernetes name prefix to prepend to all resources (should be short, like 'ksm' or 'dot')"
  default = "ksm"
}

variable "cluster_ca_certificate" {
  type = string
  description = "kubernetes cluster certificate"
  default = ""
}

variable "cluster_name" {
  type = string
  description = "name of the kubernetes cluster"
  default = ""
}

variable "monitoring_slack_url" {
  type = string
  default = ""
  description = "slack api url to send prometheus alerts to"
}

variable "kubernetes_pool_name" {
  type = string
  description = "when kubernetes cluster has several node pools, specify which ones to deploy the baking setup into. only effective when deploying on an external cluster with terraform_no_cluster_create"
  default = "blockchain-pool"
}
