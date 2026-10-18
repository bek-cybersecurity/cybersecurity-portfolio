# Linux Security Audit

## 1. Project Overview

This project documents a basic security audit
of an Ubuntu Linux system.

The goal is to collect system information,
review user privileges, and identify areas
that require further security investigation.

## 2. Environment

- Operating System: Ubuntu 26.04 LTS
- Kernel: 7.0.0-38-generic
- Root Filesystem Size: 117 GB
- Root Filesystem Usage: 19%

## 3. User and Privilege Review

The system uses a non-root user account.

The account belongs to the sudo group,
which allows authorized administrative commands.

Security recommendation:
- Use administrative privileges only when necessary.
- Protect the user account with a strong password.
- Review administrative group membership periodically.

## 4. Disk Usage Review

The root filesystem has approximately 91 GB
of available space.

Current usage is approximately 19%.

No disk-capacity concern was identified
during this basic check.

## 5. Initial Findings

- The system account has administrative privileges.
- The Wireshark group is present in the account's
  group memberships.
- Additional checks are required before making
  conclusions about the overall security posture.

## 6. Limitations

This is an initial information-gathering audit.

It does not confirm whether the system is fully secure.
Further checks should review system updates,
file permissions, running services, and firewall settings.

## 7. Skills Practiced

- Linux system administration
- User and group permissions
- Disk usage inspection
- Basic security documentation

## 8. Conclusion

This project establishes a baseline for further
Linux security assessment.

Future work will investigate system updates,
permissions, network exposure, and security controls.
