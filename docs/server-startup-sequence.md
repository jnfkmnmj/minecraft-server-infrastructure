# Server Startup Sequence

## Overview

This document records the startup sequence for the Minecraft Forge server.

## Startup Steps

### 1. Verify Java installation

```bash
java -version
```

### 2. Check server files

Verify:

- mods/
- config/
- world/

### 3. Start screen session

```bash
screen -S mcserver
```

### 4. Launch Forge server

```bash
bash run.sh
```

### 5. Monitor startup logs

Check:

```text
logs/latest.log
```

## Goal

Ensure the server starts correctly and identify startup problems early.
