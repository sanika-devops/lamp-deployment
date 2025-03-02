# 🚀 Automated LAMP Stack Deployment on AWS EC2

This project automates the deployment of a **LAMP (Linux, Apache, MySQL, PHP) stack** on an **AWS EC2 instance** using a Bash script. It sets up a web server with MySQL as the database and hosts a simple PHP page.

---

## 📂 Project Structure

- **install_lamp.sh** → Bash script for automated LAMP deployment
- **TROUBLESHOOT.md** → Common issues and solutions
- **README.md** → This file (Setup guide + commands)
- **SECURITY_CONSIDERATIONS.md** → Security best practices and hardening guidelines 

---

## 📌 1. Prerequisites

- An **AWS account**
- A **running EC2 instance** (Ubuntu 22.04)
- A **security group** with:
  - **HTTP (80)**
  - **SSH (22)**
  - **MySQL (3306) [optional]**
- **SSH access** to the instance

---

## 🔧 2. Setup Steps

### 🔹 Step 1: Connect to EC2 Instance

```bash
ssh -i your-key.pem ubuntu@your-ec2-public-ip

### 🔹 Step 2: Download the LAMP Setup Script  
```bash
wget https://raw.githubusercontent.com/sanika-devops/lamp-deployment/main/install_lamp.sh

###🔹 Step 3: Make the Script Executable
    chmod +x install_lamp.sh

###🔹 Step 4: Run the Script
    ./install_lamp.sh

###🔹 Step 5: Verify Installation
    Check Apache status
        sudo systemctl status apache2
    Check MySQL status
        sudo systemctl status mysql
    Check PHP installation
        php -v

###🔹 Step 6: Test the Setup
    Open your browser and visit:
        http://your-ec2-public-ip/index.php
