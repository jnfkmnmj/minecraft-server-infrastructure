# SSH Workflow

## Overview

This document records the basic SSH workflow used to manage the Minecraft server on a remote Ubuntu machine.

## Connect to Server

```bash
ssh username@server_ip
```

## Common Server Commands

### Check current directory

```bash
pwd
```

### List files

```bash
ls
```

### Enter server folder

```bash
cd /home/minecraft/server
```

### Check running screen sessions

```bash
screen -ls
```

### Reattach to server console

```bash
screen -r mcserver
```

### Detach from screen

Press:

```text
Ctrl + A, then D
```

## Purpose

SSH allows the server to be managed remotely without a graphical interface.  
Using `screen` keeps the Minecraft server running even after disconnecting from SSH.
