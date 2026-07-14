# Server Health Checks

## Overview

This document records routine health checks for maintaining Minecraft Forge server stability.

## Health Check Items

### Verify server is running

```bash
screen -ls
```

### Check memory usage

```bash
free -h
```

### Check disk space

```bash
df -h
```

### Review latest logs

```text
logs/latest.log
```

### Verify backup creation

Check backup archive files in:

```text
/home/minecraft/backups/
```

## Goal

Detect infrastructure or performance issues before they affect multiplayer gameplay.
