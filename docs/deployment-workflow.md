# Deployment Workflow

## Overview

This document records the general workflow used to deploy and manage a modded Minecraft Forge server.

## Deployment Steps

### 1. Prepare Ubuntu server

- Update system packages
- Install Java 17
- Install screen
- Configure firewall rules

### 2. Upload server files

Transfer Forge server files and mods into the server directory.

### 3. Configure server settings

Edit:

- server.properties
- Forge configuration files
- mod settings

### 4. Start the server

Run the startup script:

```bash
bash start-server.sh
```

### 5. Monitor server status

Check:

```bash
screen -ls
free -h
df -h
```

### 6. Troubleshoot issues

Common areas checked:

- crash reports
- mod compatibility
- memory usage
- networking issues

## Goal

Create a repeatable deployment workflow for managing large Forge modpacks on Linux infrastructure.
