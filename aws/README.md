# Create AWS Resource By Terraform

## Initialize
```
$ cd aws
$ terraform init
$ terraform -v
Terraform v0.11.11
+ provider.aws v1.59.0
```

## Creadentials
writing ACCESS_KEY and SECRET_ACCESS_KEY for AWS on `terraform.tfvars`

```
$ vi terraform.tfvars
access_key = "Access key ID"
secret_key = "Secret access key"
```

## Dry Run
```
$ terraform plan
```

## Apply
```
# all resource
$ terraform apply

# specified resource
$ terraform apply \
-target=aws_iam_role.iam_for_lambda_s3_full_access
```

## Format
```
$ terraform fmt
```

