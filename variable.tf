variable "memory_size" {
  description = "Memory size for Lambda function"
  type = number
  default = 128
}

variable "timeout" {
    description = "Timeout for Lambda Function"
    type = number
    default = 20
  
}

variable "layer_arns" {
    description = "ARNs of Lambda layers"
    type = list(any)
}

/*variable "layer2_arn" {
    description = "ARN of second Lambda layer"
    type = string
}*/
variable "lambda_bucket" {
  description = "S3 bucket where Lambda code is stored"
  type = string
  default = "lambda-code-bucket"
}
variable "lambda_package" {
  description = "S3 key for lambda code package"
  type = string
  default = "code.zip"
}
variable "lambda_function_handler" {
  description = "Handler for lambda function"
  type = string
  default = "lambda_function.lambda_handler"
}
variable "lambda_runtime_environment" {
  description = "Runtime environment for Lambda function"
  type = string
  default = "python3.11"
}
variable "security_group_id" {
    description = "SSM parameter value for Security group attached to Lambda"
    type = string
    default = "/security-group"
}
variable "vpc_id" {
  description = "SSM parameter value for VPC ID"
  type = string
  default = "value"
}
variable "subnet_a_id" {
    description = "SSM parameter for Subnet A id"
    type = string
    default = "/AppSubnetA"
}
variable "subnet_b_id" {
    description = "SSM parameter for Subnet B id"
    type = string
    default = "/AppSubnetB"
}
variable "subnet_c_id" {
    description = "SSM parameter for Subnet C id"
    type = string
    default = "/AppSubnetC"
}
variable "lambda_tags" {
  type = map(any)
}
variable "lambda_env_variable" {
  type = map(any)
}

