# Performance Optimization

## Overview

This document records several optimization attempts for improving Minecraft server performance.

## Common Issues

- High RAM usage
- Lag spikes
- Long startup times
- Low TPS during heavy mod usage

## Optimization Attempts

### Reduce render distance

Lower render distance can reduce CPU and memory usage.

### Allocate more RAM

Example JVM flags:

```bash
java -Xms4G -Xmx8G -jar forge.jar nogui
```

### Remove unstable mods

Some mods caused crashes or increased server load significantly.

### Monitor resource usage

Used Linux commands:

```bash
htop
free -h
df -h
```

## Goal

Improve server stability and multiplayer performance for large Forge modpacks.
