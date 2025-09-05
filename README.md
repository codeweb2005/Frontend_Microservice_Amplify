# Frontend Deployment with AWS Amplify

## Required GitHub Secrets

Add the following secrets to your GitHub repository:

### AWS Credentials

* `AWS_ACCESS_KEY_ID` – AWS Access Key ID
* `AWS_SECRET_ACCESS_KEY` – AWS Secret Access Key
* `GITHUB_ACCESS_TOKEN` – GitHub Personal Access Token

### Application Secrets

* `VITE_API_URL` – Backend API URL
* `VITE_STRIPE_PUBLIC_KEY` – Stripe public key
* `DOMAIN_NAME` – Custom domain name (e.g., example.com)
* `REPOSITORY_URL` – GitHub repository URL (e.g., [https://github.com/username/repo](https://github.com/username/repo))

## How to Add Secrets

1. Go to your GitHub repository → **Settings** → **Secrets and variables** → **Actions**
2. Click **New repository secret**
3. Add each secret with its corresponding name and value


