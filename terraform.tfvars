memory_size = 128
timeout = 20
layer_arns = ["arn:aws:lambda:ap-south-1:590183834329:layer:layer1:1","arn:aws:lambda:ap-south-1:590183834329:layer:layer2:1"]
lambda_bucket = "techwhisper-ami-snapshot-ebs-volume-inventory"
lambda_package = "change_log_retention.zip"
lambda_function_handler = "lambda_function.lambda_handler"
lambda_runtime_environment = "python3.10"
vpc_id = "/lambda/vpcid"
security_group_id = "security_group1"
subnet_a_id = "/lambda/AppSubnetA"
subnet_b_id = "/lambda/AppSubnetB"
subnet_c_id = "/lambda/AppSubnetC"
lambda_tags = {
    name="lambdaName"
    env="test"
}
lambda_env_variable = {
    env="test"
    createdby="tf"
}