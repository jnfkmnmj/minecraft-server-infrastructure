# Ubuntu Server Setup

## Overview

This document records the setup process for deploying a modded Minecraft Forge server on an Ubuntu cloud server.

## Environment

- Ubuntu 22.04
- Java 17
- Forge 1.20.1
- Vultr cloud server

## Initial Setup Steps

### Update packages

```bash
sudo apt update && sudo apt upgrade -y
```

### Install Java 17

```bash
sudo apt install openjdk-17-jdk -y
```

### Verify Java installation

```bash
java -version
```

### Install screen

```bash
sudo apt install screen -y
```

## Purpose

The goal of this setup was to create a stable Linux environment for hosting a modded Minecraft Forge server.
