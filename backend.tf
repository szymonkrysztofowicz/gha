terraform {
    backend "s3" {
        bucket          = "test"
        key             = "test.tfstate"
        region          = "us-east-2"
        dynamodb_table  = "test-backend-lock"
        profile         = "test"
    }
}
