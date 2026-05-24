# Mod Management

## Overview

This document records general practices for managing mods on a Minecraft Forge server.

## Common Tasks

### Add mods

Place mod `.jar` files into:

```text
mods/
```

### Remove mods

Delete the corresponding mod files from the mods folder.

### Update mods

Replace old mod versions with updated files.

## Compatibility Considerations

Potential issues:

- Incorrect Minecraft version
- Wrong Forge version
- Missing dependencies
- Client/server version mismatch

## Testing Workflow

1. Add mods gradually
2. Start server after each change
3. Check logs for errors
4. Remove unstable mods if necessary

## Goal

Maintain server stability while supporting large modpacks.
