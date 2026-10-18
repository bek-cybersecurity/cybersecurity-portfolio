# Network Security Findings

## 1. Scope

This assessment reviewed listening network ports, SSH configuration,
and the local firewall status on an Ubuntu system.

## 2. Firewall Status

- UFW status: Inactive
- The inspected nftables INPUT chains showed an ACCEPT policy.
- Virtualization-related libvirt rules were present.

Security impact:
The inspected host firewall configuration does not show a general
default-deny inbound policy. This does not, by itself, prove that the
host is reachable from the public internet.

Recommendation:
Review the required network services and configure inbound filtering
according to the system's actual use case.

## 3. SSH Service

Observed results:

- ssh.service: Inactive
- ssh.socket: Active and enabled
- SSH listening addresses: 0.0.0.0:22 and [::]:22
- PasswordAuthentication: yes
- PermitRootLogin: prohibit-password

Security impact:
SSH socket activation is enabled. The SSH service may be started when
a connection arrives. Password authentication is permitted by the
effective SSH configuration.

Recommendation:
If remote SSH access is unnecessary, review whether the socket should
remain enabled. If SSH is required, use strong authentication and
restrict access appropriately.

## 4. Other Listening Services

| Service | Port | Observed binding |
|---|---:|---|
| dnsmasq | 53 TCP/UDP | Loopback and local/virtual network addresses |
| systemd-resolved | 53 TCP/UDP | Local resolver addresses |
| avahi-daemon | 5353 UDP | All IPv4 and IPv6 interfaces |
| dnsmasq | 67 UDP | virbr0 virtual interface |
| cupsd | 631 TCP | Loopback only |
| tor | 9050 TCP | 127.0.0.1 only |
| chronyd | 323 UDP | Loopback only |

Security impact:
Listening ports should be evaluated according to their purpose,
network binding, and required functionality. Their presence alone
does not establish a vulnerability.

## 5. Limitations

This was a basic configuration review. No external penetration test
was performed, and public internet reachability was not established.

## 6. Next Steps

- Review available operating system updates.
- Review service requirements and firewall rules.
- Check relevant file permissions and account privileges.
- Repeat the checks after approved configuration changes.
