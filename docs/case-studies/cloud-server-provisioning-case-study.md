# Cloud Server Provisioning

## Background

My friend and I had been playing Minecraft together using NAT traversal tools for quite some time. This setup worked reasonably well in the beginning, but after we were living farther apart, the connection quality became increasingly unstable.

We frequently experienced severe lag, long loading times, and connection failures, making multiplayer gameplay unreliable.

Instead of continuing to rely on peer-to-peer networking, I decided to build a dedicated cloud-hosted Minecraft server.

Although the original motivation was to improve multiplayer performance, the project quickly expanded into learning Linux server administration, deployment, automation, and infrastructure management.

---

## Problem

The original peer-to-peer solution could no longer provide a stable multiplayer experience.

Because the connection depended on one player's local computer and network conditions, both latency and reliability became major issues as the physical distance between players increased.

Before deploying Minecraft itself, I also needed to determine:

- which cloud provider to use
- whether Linux was an appropriate operating system
- how to remotely manage the server
- how to configure networking for external connections

These infrastructure decisions would affect every later stage of the project.

---

## Investigation

Before deploying the server, I compared several cloud providers.

My considerations included:

- monthly cost
- CPU performance
- available memory
- storage
- network quality
- ease of management

After comparing multiple options, I selected Vultr as the initial deployment platform.

Once the virtual machine was created, I prepared the operating environment before installing Minecraft.

This process included:

- deploying Ubuntu Server
- obtaining the public IP address
- configuring SSH access
- connecting through FinalShell
- understanding the Linux directory structure
- configuring firewall rules
- preparing network connectivity for multiplayer access

At this stage, I realized that successfully hosting a dedicated server depended on infrastructure preparation rather than simply running a game application.

---

## Solution

Rather than immediately focusing on Minecraft itself, I treated the cloud server as an infrastructure project.

The deployment was completed incrementally:

1. Deploy the Ubuntu virtual machine.
2. Configure remote SSH access.
3. Prepare the operating environment.
4. Configure networking and firewall rules.
5. Verify remote connectivity before installing additional software.

Breaking deployment into independent stages reduced troubleshooting complexity and created a reliable foundation for later Forge deployment.

---

## Validation

The cloud server was successfully provisioned and became the foundation for every later stage of the project.

Successful SSH access, Linux environment preparation, firewall configuration, and stable remote connectivity confirmed that the infrastructure was ready for Java installation, Paper testing, and subsequent Forge deployment.

The infrastructure validation also confirmed that future problems would likely originate from the application layer rather than the cloud environment itself.

---

## Lessons Learned

Building the server taught me that successful deployment starts long before installing the application itself.

Infrastructure preparation—including operating system installation, remote access, and network configuration—is the foundation for every step that follows.

I also learned to separate infrastructure problems from application problems. Verifying each layer independently made later debugging significantly more efficient and reduced unnecessary troubleshooting.

---

## Engineering Skills Demonstrated

- Cloud infrastructure deployment
- Linux server administration
- SSH remote management
- Network configuration
- Firewall configuration
- Infrastructure validation
- Deployment planning
- Technical documentation
