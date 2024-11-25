# Hello World
This workflow can be trigger via the `gcloud` command line:

```
gcloud workflows run hello-workflow --location=asia-southeast1
```

It can also be triggered with a application. With `go`
use: https://pkg.go.dev/cloud.google.com/go/workflows/executions/apiv1#Client.CreateExecution

## Deploy and manage with terraform

Edit `variables.tf` to set region and project_id .

1. terraform init
1. terraform plan
1. terraform apply

----

1. terraform destroy