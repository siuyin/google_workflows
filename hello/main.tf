terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.12.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}


resource "google_workflows_workflow" "hello" {
  name          = "hello2-workflow"
  region        = var.region
  description   = "hello 2 was created with Terraform"
  call_log_level = "LOG_ERRORS_ONLY"
  labels = {
    env = "test"
  }
  user_env_vars = {
    hello = "world"
  }
  deletion_protection = false
  source_contents = file("./main.yaml")
}