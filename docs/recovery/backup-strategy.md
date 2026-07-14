# Backup Strategy

## Overview

This document records the backup strategy for protecting Minecraft world save data.

## Backup Targets

- world/
- configuration files
- logs
- important server scripts

## Backup Frequency

Daily backups are recommended for active servers.

## Backup Rotation

Old backups can be removed after a set number of days to save disk space.

Example:

```bash
bash clean-old-backups.sh
```

## Goal

Reduce the risk of data loss and make server recovery easier.
