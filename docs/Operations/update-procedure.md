# Update Procedure

## Overview

This document records the general workflow for updating the Minecraft Forge server safely.

## Recommended Workflow

### 1. Stop the server

```bash
bash stop-server.sh
```

### 2. Create backups

```bash
bash backup-world.sh
```

### 3. Update server files

- Replace outdated mods
- Update configuration files
- Verify Forge compatibility

### 4. Restart the server

```bash
bash restart-server.sh
```

### 5. Check logs

Inspect:

```text
logs/latest.log
crash-reports/
```

## Goal

Reduce instability and avoid data loss during server updates.
