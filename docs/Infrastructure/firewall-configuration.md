# Firewall Configuration

## Overview

This document records the firewall configuration process for the Minecraft server.

## UFW Setup

### Enable UFW

```bash
sudo ufw enable
```

### Allow SSH connections

```bash
sudo ufw allow 22
```

### Allow Minecraft server port

```bash
sudo ufw allow 25565
```

### Check firewall status

```bash
sudo ufw status
```

## Purpose

Firewall rules help secure the Ubuntu server while allowing Minecraft players to connect properly.
