# Terraform Remote State Strategy

## Backend

- Amazon S3
- DynamoDB Locking

## State Layout

```text
dev/terraform.tfstate
stage/terraform.tfstate
prod/terraform.tfstate
```

## Benefits

- Shared State
- Team Collaboration
- State Locking
- Versioning
- Disaster Recovery

What Actually Happens?
Local State
     │
     ▼
terraform.tfstate
     │
     ▼
S3 Bucket
dev/terraform.tfstate


Locking:-

terraform apply
        │
        ▼
DynamoDB Lock Created
        │
Apply Runs
        │
Lock Released