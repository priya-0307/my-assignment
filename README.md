Task 1 ‒ Containerization

--> Build and Tag Docker Image

    docker build -t myapp:latest .
-->Push Image to DockerHub / AWS ECR
    
     AWS ECR:

  aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <aws_account_id>.dkr.ecr.us-east-1.amazonaws.com
  docker tag myapp:latest <aws_account_id>.dkr.ecr.us-east-1.amazonaws.com/myapp:latest
  docker push <aws_account_id>.dkr.ecr.us-east-1.amazonaws.com/myapp:latest

  Task 2 ‒ CI Pipeline

  Pipeline Stages:

      Build: npm install + npm run build

      Test: npm test or Jest tests

      Docker Build: Build multi-stage image

      Image Security Scan: Trivy scan

      Tag & Push: Push to DockerHub/ECR

   Task 3 ‒ Infrastructure as Code
Terraform Resources:

 --> VPC, Subnets, Security Groups

 --> ECR Repository

 --> EC2 / ECS / EKS Cluster

 --> IAM Roles 
 Task 4 ‒ Kubernetes Deployment

   --> kubectl apply -f deployment.yaml
   --> kubectl apply -f service.yaml

   Task 5 ‒ Monitoring & Logging

   Prometheus + Grafana or AWS CloudWatch

   Task 6 ‒ Security Scan

Use Trivy for container image vulnerability scanning.
