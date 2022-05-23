#!/bin/bash
terraform apply --target=aws_ecr_repository.rearc --auto-approve
docker build -t rearc-app:latest .
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 609954475703.dkr.ecr.us-east-1.amazonaws.com
docker tag rearc-app:latest 609954475703.dkr.ecr.us-east-1.amazonaws.com/rearc-app:latest
docker push 609954475703.dkr.ecr.us-east-1.amazonaws.com/rearc-app:latest
terraform apply --auto-approve 
