# Server Directory Structure

## Overview

This document records the directory structure used for organizing Minecraft server files on Ubuntu Linux.

## Example Structure

```text
/home/minecraft/
├── server/
│   ├── mods/
│   ├── config/
│   ├── world/
│   ├── logs/
│   └── crash-reports/
├── backups/
└── scripts/
```

## Folder Purposes

### server/

Contains the main Forge server files.

### mods/

Stores all installed Minecraft mods.

### config/

Contains mod and server configuration files.

### world/

Stores world save data.

### logs/

Contains server log files.

### crash-reports/

Stores Forge crash reports.

### backups/

Stores compressed world backups.

## Goal

Maintain a clean and organized server infrastructure layout for easier troubleshooting and maintenance.
