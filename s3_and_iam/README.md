# My seconde terraform file
- this script is used to create an 1 s3 bucket , 1 iam user using modules 
- to run it use the follwing commands:
```bash
terraform init
terraform plan
terrafrom aply

```
  ==> make sure to install terraform and aws cli and conifg it with your aws's access key first.
- to show the secret key run 
```bash
terraform output secret_access_key
```
- after you finish don't forget to destroy the resources.