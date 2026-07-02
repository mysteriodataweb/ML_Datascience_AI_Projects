# Security Policy

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| 1.0.x   | :white_check_mark: |

## Reporting a Vulnerability

This is a personal portfolio project and does not handle production user data. However, if you discover a security vulnerability, please report it privately by opening a security advisory on GitHub or contacting the repository owner directly.

Please do not disclose security vulnerabilities publicly without prior coordination.

## Security Best Practices

- No API keys, passwords, or secrets are stored in this repository
- Environment variables are used for sensitive configuration (see `.env.example`)
- All dependencies should be kept up to date
- Pre-commit hooks check for accidentally committed secrets
