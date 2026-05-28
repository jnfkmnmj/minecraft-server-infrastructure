# Backup Recovery Testing

## Overview

This document records the importance of testing backup recovery procedures for Minecraft servers.

## Why Recovery Testing Matters

Backups are only useful if recovery works correctly.

## Recommended Testing Workflow

### 1. Create backup archive

```bash
bash backup-world.sh
```

### 2. Extract backup files

```bash
tar -xzf world-backup.tar.gz
```

### 3. Verify world integrity

Check that:

- world files exist
- region files load correctly
- server starts successfully

## Goal

Ensure world backups can be restored successfully after server failures.
