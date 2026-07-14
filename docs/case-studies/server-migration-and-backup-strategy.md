# Server Migration and Backup Strategy

## Background

After operating the Forge server on Vultr, I eventually needed to stop using the original cloud instance and preserve the server for future deployment.

The server contained more than just a Minecraft world. It also included mods, configurations, startup files, player data, logs, and Forge libraries. Rebuilding these components manually would have required repeating much of the earlier troubleshooting process.

The goal was therefore to create a complete backup that could be transferred to another machine and restored later.

---

## Problem

The main challenge was deciding what needed to be preserved before deleting the original cloud server.

A simple world backup would retain buildings and player progress, but it would not preserve the complete working environment.

Important server components included:

- world data
- mod files
- configuration files
- Forge libraries
- startup scripts
- JVM settings
- server properties
- player and permission data

Losing any of these could make the restored server behave differently or fail to start.

---

## Investigation

Before creating the backup, I first identified which files were essential for rebuilding the server environment.

Rather than focusing only on the Minecraft world, I considered the entire deployment, including Forge libraries, configuration files, startup scripts, mods, and player data.

This analysis confirmed that preserving only the world save would not be sufficient to recreate a working server.

---

## Solution

Instead of copying files individually, I decided to preserve the complete Minecraft server directory.

The directory was compressed into a single archive before transfer. This provided several advantages:

- preserved the original folder structure
- reduced the number of files transferred separately
- made the backup easier to verify
- simplified restoration on another machine

Before shutting down the server, I confirmed that the Minecraft process had stopped so that files would not change during compression.

The compressed archive was then downloaded from the Linux server to my local Windows computer.

I used command-line file transfer tools and explicitly selected the local destination directory before downloading the archive.

During this process, I verified:

- the correct remote file path
- the correct local destination
- whether the archive completed successfully
- whether its size matched the server copy

After transferring the backup, I tested the server in a Windows environment.

The restored server required a different startup method:

- Linux used `run.sh`
- Windows used `run.bat`

Although the server files themselves remained unchanged, the operating-system-specific startup process required minor adjustments.

Testing the restored copy confirmed that the archive contained all required components and could be reused outside the original cloud environment.

---

## Validation

Before deleting the Vultr instance, I verified that:

- the backup archive existed locally
- the archive contained the complete server directory
- the world and configuration files were present
- the restored server could begin its startup process
- the original cloud server was no longer required

Only after these checks was the original instance shut down and removed.

The complete server environment was successfully preserved outside the original cloud provider.

This meant that the project was no longer dependent on a single virtual machine. The server could be stored locally, inspected later, or transferred to another hosting platform without rebuilding everything from the beginning.

The migration also preserved the troubleshooting work already invested in the Forge environment and mod configuration.

---

## Lessons Learned

This stage taught me that backups should be designed around recovery, not only storage.

A backup is valuable only if it contains everything required to restore the system and has been tested before the original environment is removed.

I also learned that infrastructure migration involves two separate concerns:

1. Preserving application data and configuration.
2. Adapting the restored application to the new operating environment.

By verifying the archive before deleting the original server, I reduced the risk of permanently losing both the game data and the working configuration.

---

## Engineering Skills Demonstrated

- Backup planning
- Data migration
- File compression and transfer
- Cross-platform deployment
- Recovery validation
- Risk management
- Cloud resource retirement
- Infrastructure portability
