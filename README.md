# Frontend Deployment với AWS Amplify

## GitHub Secrets cần thiết

Thêm các secrets sau vào repository GitHub:

### AWS Credentials
- `AWS_ACCESS_KEY_ID` - AWS Access Key ID
- `AWS_SECRET_ACCESS_KEY` - AWS Secret Access Key

### Application Secrets  
- `VITE_API_URL` - URL của API backend
- `VITE_STRIPE_PUBLIC_KEY` - Stripe public key
- `DOMAIN_NAME` - Tên miền tùy chỉnh (ví dụ: example.com)
- `REPOSITORY_URL` - URL repository GitHub (ví dụ: https://github.com/username/repo)

## Cách thêm secrets

1. Vào repository GitHub → Settings → Secrets and variables → Actions
2. Click "New repository secret"
3. Thêm từng secret với tên và giá trị tương ứng

## Triển khai

Workflow sẽ tự động chạy khi:
- Push code lên branch `main` (sẽ apply changes)
- Tạo Pull Request (chỉ chạy plan để review)