# Cron Automation

## Overview

This document records basic cron job automation for Minecraft server management on Ubuntu Linux.

## Common Automated Tasks

### Daily world backups

```bash
0 3 * * * /home/minecraft/scripts/backup-world.sh
```

### Automatic cleanup of old backups

```bash
0 4 * * * /home/minecraft/scripts/clean-old-backups.sh
```

### Automatic server status checks

```bash
*/10 * * * * /home/minecraft/scripts/check-server-status.sh
```

## Purpose

Cron jobs help automate repetitive server maintenance tasks and improve reliability.
