#  Terraform for Kubernetes
​
## Usage
The init argument will initialize the environment.
```bash
$ terraform init
```
​
The plan argument will syntax check the files and prepare the deployment.
```bash
$ terraform plan -out Kubernetes.plan
```
​
Deploy the Kubernetes:
​
```bash
$ terraform apply Kubernetes.plan
```
​
This will deploy the AWS VPC. To view data about the VPC/Subnet/Security Group from your local Linux box execute:
​
```bash
$ terraform show
```
​
To destroy the VPC execute:
```bash
$ terraform destroy
```
