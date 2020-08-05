#Terraform 



## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.6, < 0.14 |
| aws | ~> 2.35 |


## Usage

### Below commands are common for S3 and kubernetes

The init argument will initialize the environment.
```bash
$ terraform init
```
​
The plan argument will syntax check the files and prepare the deployment.
```bash
$ terraform plan -out vpc.plan
```
​
Deploy the VPC:
​
```bash
$ terraform apply vpc.plan
```
​
This will deploy the terraform in AWS:
​
```bash
$ terraform show
```
​
To destroy the setup done using terraform execute:
```bash
$ terraform destroy
```
