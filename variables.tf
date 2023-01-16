variable "tags-test1" {
  type = map(any)
  default = {
    Project     = "VPC_Task"
    Environment = "Test"
    Team        = "DevOps"
    Created_by  = "Stefan"
  }
  description = "Tags for my first terraform task"
}