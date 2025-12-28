🚀 Deploying a Secure Web Application on AWS using CI/CD, Kubernetes & Monitoring
📌 Project Overview

This project simulates a real-world enterprise DevOps and Security environment where a web application is deployed on AWS infrastructure using a CI/CD pipeline, containerization, Kubernetes orchestration, and continuous monitoring & intrusion detection.

The goal was to design, implement, and troubleshoot a scalable, secure, and automated cloud architecture, while balancing cost optimization, high availability, and security monitoring.

🏗️ Architecture Summary

AWS Cloud Infrastructure

Multiple AWS accounts (cost optimization)

EC2-based Kubernetes cluster

VPC Peering for private communication

CI/CD Pipeline

GitHub → Jenkins → Docker → Kubernetes

Monitoring & Security

Nagios Core for instance monitoring

Snort & AlienVault OSSIM for IDS/Vulnerability scanning

Infrastructure as Code

Terraform for provisioning AWS resources

🧩 Technology Stack
Category	Tools
Cloud Platform	AWS (EC2, VPC, VPC Peering, Security Groups, EIP)
CI/CD	Jenkins, GitHub
Containers	Docker
Orchestration	Kubernetes (kubeadm / EKS research)
Monitoring	Nagios Core (NCPA Client)
Security	Snort, AlienVault OSSIM
IaC	Terraform
OS	Linux (Debian/Ubuntu)
🌐 High-Level Architecture
GitHub Repo
    |
    | (Webhook Trigger)
    ↓
Jenkins CI/CD Pipeline
    |
    | Build Docker Image
    ↓
Docker Hub
    |
    | Pull Image
    ↓
Kubernetes Cluster (AWS EC2)
    |
    | Service Exposure
    ↓
Web Application (Apache)


Monitoring & Security (Local Machine):

Nagios monitors EC2 nodes and services

Snort / OSSIM detects suspicious traffic and vulnerabilities

🔐 Network Design

Production VPC

Internet-facing Kubernetes cluster

Internal Networking

VPC Peering for private communication between accounts

Security

Strict Security Groups & ACLs

No direct public access to internal services

⚙️ CI/CD Pipeline Workflow

Developer pushes code to GitHub

Jenkins pipeline is triggered automatically

Docker image is built and tested

Image is pushed to Docker Hub

Kubernetes pulls the latest image

Application is deployed/updated with zero downtime

📊 Monitoring & Security Implementation
Nagios

EC2 instance health

CPU, memory, disk usage

Network availability

Service uptime using NCPA Agent

Security (IDS / Vulnerability Scanning)

Snort for intrusion detection

AlienVault OSSIM for vulnerability scanning

Real-world troubleshooting of dependency and performance issues

📅 Project Execution (Sprint Summary)
Sprint 1 – Infrastructure & Research

VPC Peering across AWS accounts

EC2 provisioning & networking

Nagios setup and testing

Offline VMware testing

Sprint 2 – Automation, Security & Optimization

Terraform-based infrastructure

Jenkins pipeline implementation

Kubernetes cluster setup

IDS/Vulnerability scanning setup

Performance tuning (instance resizing)

Cost optimization decisions

⚠️ Challenges Faced & Solutions
Challenge	Solution
Minikube resource limitations	Switched to kubeadm
t2.micro instability	Upgraded to t2.medium / t2.large
OSSIM crashing	Reconfigured usage & added Snort
Jenkins pipeline failures	Rewritten and optimized pipeline
Kubernetes service failure	Adjusted node size & security rules
🎯 Key Learnings

Designing enterprise-grade cloud architectures

Practical CI/CD pipeline troubleshooting

Kubernetes cluster sizing and optimization

Real-world monitoring & security integration

Cost-aware infrastructure decisions

Infrastructure as Code best practices

📈 Why This Project Matters

✔ Mirrors real enterprise DevOps workflows
✔ Combines Cloud + DevOps + Security
✔ Demonstrates troubleshooting under constraints
✔ Shows production-level automation and monitoring

This project reflects hands-on experience, not just theory.

📂 Repository Structure (Example)
├── terraform/
├── jenkins/
│   └── Jenkinsfile
├── docker/
│   └── Dockerfile
├── kubernetes/
│   ├── deployment.yaml
│   └── service.yaml
├── monitoring/
│   └── nagios-configs
└── README.md

👤 Author

Sudhir Gore
DevOps | Cloud | Linux | Security Enthusiast

🔗 GitHub: https://github.com/C2-803100

⭐ If you like this project, consider giving it a star!
