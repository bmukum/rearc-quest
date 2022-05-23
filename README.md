# Quest Deployment

This repo contains code to deploy rearc's quest app to Amazon ECS using terraform.

### Prerequisites

- A Linux 64-bit x86/64 ec2 instance
- AWS credentials or access to an aws environment
- Docker, terraform, git and the aws cli installed.

### Steps to Deploy

- After having git, docker, terraform and the AWS cli installed, run the following commands to deploy the app:
- Clone this repo: `git clone https://github.com/bmukum/quest.git`
- Execute the script:
  - `cd quest`
  - `chmod +x rearc.sh`
  - `./rearc.sh`


### Verify the deployment

Terraform would output the load balancer dns name. Check the deployment with:

1. AWS index page - `http://<alb-dns>`
2. Docker check - `http://<alb-dns>/docker`
3. Secret Word check - `http://<alb-dns>/secret_word`
4. Load Balancer check  - `http://<alb-dns>/loadbalanced`
5. TLS check - `http://<alb-dns>/tls`

### How should it look like ?
My index page looks like this:

<img width="1402" alt="image" src="https://user-images.githubusercontent.com/64148017/169851418-def2446b-298f-4b3c-a109-d932fb013516.png">
