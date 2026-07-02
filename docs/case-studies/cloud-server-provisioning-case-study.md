# Cloud Server Provisioning Case Study

## Background

My friend and I had been playing Minecraft together using NAT traversal tools for quite some time. This setup worked reasonably well in the beginning, but after we were living farther apart, the connection quality became increasingly unstable.

We frequently experienced severe lag, long loading times, and connection failures, making multiplayer gameplay unreliable.

Instead of continuing to rely on peer-to-peer networking, I decided to build a dedicated cloud-hosted Minecraft server.

Although the original motivation was to improve multiplayer performance, the project quickly expanded into learning Linux server administration, deployment, automation, and infrastructure management.

---

## Choosing a Cloud Platform

Before deploying the server, I compared several cloud providers.

My considerations included:

* monthly cost
* CPU performance
* available memory
* storage
* network quality
* ease of management

After comparing multiple options, I selected Vultr as the initial deployment platform.

---

## Preparing the Server

After creating the virtual machine, I needed to prepare the operating environment before Minecraft could even be installed.

The initial setup included:

* deploying Ubuntu Server
* obtaining the public IP address
* configuring SSH access
* connecting through FinalShell
* understanding the Linux directory structure

At this stage, I realized that running a dedicated server involved much more than launching a game application.

---

## Network Configuration

The next step was configuring the server so players could actually connect.

This included:

* verifying public IP connectivity
* opening the Minecraft server port
* checking firewall settings
* understanding how clients communicate with a remote Linux server

Compared with my previous peer-to-peer setup, this required a much better understanding of basic networking concepts.

---

## Lessons Learned

Building the server taught me that successful deployment starts long before installing the application itself.

Infrastructure preparation—including operating system installation, remote access, and network configuration—is the foundation for every step that follows.

This experience also changed how I approached technical problems. Rather than searching for a single solution, I learned to break deployment into smaller stages and verify each one independently before moving forward.
