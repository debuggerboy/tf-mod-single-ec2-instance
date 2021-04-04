terraform {
  backend "s3" {
    bucket = "pulsiot"
    key    = "tft/study/tf-study/terraform.tfstate"
    region = "us-east-2"
  }
}