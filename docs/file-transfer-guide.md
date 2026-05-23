# File Transfer Guide

## Overview

This document records methods used to transfer Minecraft server files between local machines and remote Ubuntu servers.

## SCP Transfer

### Upload files to server

```bash
scp file.zip username@server_ip:/home/minecraft/
```

### Download files from server

```bash
scp username@server_ip:/home/minecraft/world.zip .
```

## Common Use Cases

- Uploading modpacks
- Importing world saves
- Downloading backups
- Updating configuration files

## Notes

Large modpacks may require longer transfer times depending on internet speed and server location.
