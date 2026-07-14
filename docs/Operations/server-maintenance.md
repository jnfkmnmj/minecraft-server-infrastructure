# Server Maintenance

## Overview

This document records routine maintenance tasks for managing the Minecraft Forge server.

## Common Maintenance Tasks

### Monitor disk space

```bash
df -h
```

### Monitor memory usage

```bash
free -h
```

### Check running screen sessions

```bash
screen -ls
```

### Restart server after updates

```bash
bash restart-server.sh
```

### Create world backups

```bash
bash backup-world.sh
```

## Maintenance Goals

- Improve server stability
- Reduce unexpected crashes
- Protect world save data
- Maintain multiplayer performance
