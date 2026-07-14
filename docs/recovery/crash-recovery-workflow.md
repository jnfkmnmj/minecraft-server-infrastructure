# Crash Recovery Workflow

## Overview

This document records a basic workflow for recovering from Minecraft Forge server crashes.

## Recovery Steps

### 1. Review crash reports

Check:

```text
crash-reports/
logs/latest.log
```

### 2. Identify recent changes

Possible causes:

- newly added mods
- configuration changes
- server updates

### 3. Restore backups if necessary

```bash
bash backup-world.sh
```

### 4. Restart the server

```bash
bash restart-server.sh
```

### 5. Monitor startup logs

Verify that the server starts successfully after recovery.

## Goal

Reduce downtime and improve recovery consistency after server failures.
