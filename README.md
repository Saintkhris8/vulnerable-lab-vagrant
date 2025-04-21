# Vulnerable Lab Environment with Vagrant

This project provisions a vulnerable lab with 3 Ubuntu machines and 1 Kali Linux attacker using Vagrant. It is designed for offensive security practice.

## Machines

- **Kali**: 192.168.56.10
- **Ubuntu1**: 192.168.56.11 — Apache + PHP shell
- **Ubuntu2**: 192.168.56.12 — FTP anonymous access
- **Ubuntu3**: 192.168.56.13 — Flask app vulnerable to command injection

## Testing

From Kali:
- Use `curl` for web shells
- Use `ftp` to test access
- Use `nmap` to scan

