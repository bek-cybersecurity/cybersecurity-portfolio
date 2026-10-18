# Linux Security Audit

## 1. Project Overview

This project documents a basic security audit of an Ubuntu Linux system.

The goal is to collect system information, review user privileges, and identify areas that require further security investigation.

## 2. System Information

- Operating System: Ubuntu 26.04 LTS
- Kernel Version: 7.0.0-38-generic
- Root Filesystem Size: 117 GB
- Disk Usage: 19%
- Available Disk Space: Approximately 91 GB
- Username: bek

## 3. User Privileges

The current user belongs to the `sudo` group.

This membership allows the user to execute authorized administrative commands.

Security Recommendations:
- Use administrative privileges only when necessary.
- Protect the account with a strong password.
- Review administrative group memberships periodically.
- Never share account credentials.

## 4. Disk Usage Analysis

The root filesystem has approximately 91 GB of available space.

Current disk usage is approximately 19%.

No immediate disk-capacity concern was identified during this basic check.

## 5. Group Membership Analysis

The account belongs to several groups, including:

- `sudo`
- `adm`
- `wireshark`
- `libvirt`

These groups provide different permissions.

Security Recommendations:
- Review group memberships periodically.
- Remove unnecessary privileges when appropriate.
- Protect access to packet captures and sensitive logs.
- Ensure administrative access is limited to authorized users.

## 6. Initial Findings

The initial assessment identified the following:

1. The user account has administrative privileges through the `sudo` group.
2. The account belongs to the `wireshark` group.
3. The root filesystem has sufficient available space at the time of inspection.
4. Further checks are needed to evaluate system security.

## 7. Limitations

This is a basic information-gathering audit.

It does not establish that the system is completely secure.

Additional checks should include:

- Installed security updates
- File and directory permissions
- Running network services
- Firewall configuration
- SSH configuration, if enabled
- System logs and security events

## 8. Tools Used

- Ubuntu Linux
- Terminal
- `whoami`
- `lsb_release`
- `uname`
- `df`
- `id`

## 9. Skills Demonstrated

- Linux system administration
- User and group permission review
- Basic system reconnaissance
- Disk usage analysis
- Security documentation
- Identification of areas requiring further investigation

## 10. Conclusion

This project establishes an initial baseline for Linux security assessment.

The next stage will investigate system updates, file permissions, running services, and firewall configuration.

The purpose is to identify potential security weaknesses and recommend appropriate defensive measures.

---

Project Status: Initial Assessment Completed
