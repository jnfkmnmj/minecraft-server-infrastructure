# Server Recovery

## Overview

This document records basic recovery procedures for Minecraft Forge server failures.

## Common Failure Scenarios

- Server crash during startup
- Mod incompatibility
- Corrupted configuration files
- World loading failures
- Unexpected shutdowns

## Recovery Workflow

### 1. Check logs

```text
logs/latest.log
crash-reports/
```

### 2. Restore backups

Recover world saves from backup archives.

### 3. Remove problematic mods

Disable recently added or unstable mods.

### 4. Restart the server

```bash
bash restart-server.sh
```

## Goal

Reduce downtime and recover the server safely after failures.
