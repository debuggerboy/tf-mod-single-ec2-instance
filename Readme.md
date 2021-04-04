# Singular EC2 Module

A terraform module to create a standalone EC2 instance.

## usage

For studying, how to create a simple terraform module.

### Prerequisite

Please condigure your AWS CLI on your local workstation from where you will be triggering terraform commands.

### Invocation

Clone git repo:

```
git clone https://github.com/debuggerboy/tf-mod-single-ec2-instance.git
```

Navigate to newly clonned directory:

```
cd tf-mod-single-ec2-instance
```

Create a temporary directory `plans` inside the current directory:

```
mkdir plans
```

Run terraform validate

```
terraform validate
```

Run terraform plan

```
terraform plan -var-file dev.tfvars -out "plans/example-ec2.plan"
```

Run terraform apply

terraform apply "plans/example-ec2.plan"

## To-Do

### Urgent

- add security-group
- increase root volume