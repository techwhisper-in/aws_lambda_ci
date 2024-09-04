resource "aws_lambda_function" "lambda_function" {
    function_name = "LambdaFunctionTestTf"
    role = "arn:aws:iam::590183834329:role/fetch-delete-unattached-ebs-role"
    handler = var.lambda_function_handler
    runtime = var.lambda_runtime_environment
    timeout = var.timeout
    memory_size = var.memory_size
    s3_bucket = var.lambda_bucket
    s3_key = var.lambda_package
    kms_key_arn = "arn:aws:kms:ap-south-1:590183834329:key/5c803437-93f8-4312-bdb1-a3c37c316e0b"
    tracing_config {
      mode = "Active"
    }
    layers = var.layer_arns
    environment {
      variables = var.lambda_env_variable
    }
    tags = var.lambda_tags
    vpc_config {
      security_group_ids = [data.aws_ssm_parameter.security_group_id.value]
      subnet_ids = [
        data.aws_ssm_parameter.subnet_a_id.value,
        data.aws_ssm_parameter.subnet_b_id.value,
        data.aws_ssm_parameter.subnet_c_id.value
        ]
    }
}