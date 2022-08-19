terraform {
    backend "s3" {
        bucket          = "arn:aws:s3:::sk-terraform-2022-state-backend"
        encrypt         = true
        key             = "terraform-state.tfstate"
        region          = "us-east-1"
    }
}
