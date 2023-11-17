variable "environment" {
  description = "Environment to deploy workload"
  type        = string
  default     = "dev"
  nullable    = false
}