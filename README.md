# Minecraft Server Infrastructure

A computer science infrastructure project documenting the deployment, troubleshooting, maintenance, and migration of a modded Minecraft Forge server across Linux and Windows environments.

The project began as an attempt to replace an unstable peer-to-peer multiplayer setup with a dedicated cloud server. It later developed into a broader exploration of Linux administration, cloud infrastructure, software integration, automation, performance analysis, data migration, and recovery planning.

## Project Objectives

* Deploy a Forge 1.20.1 server on Ubuntu Linux
* Build a reliable environment for cross-region multiplayer
* Learn Linux and SSH-based server administration
* Migrate an existing multiplayer world to a dedicated server
* Integrate and troubleshoot a large collection of Forge mods
* Automate routine server management tasks
* Monitor system performance and resource limitations
* Preserve and migrate the complete server environment
* Document real troubleshooting processes and engineering decisions

## Technologies

* Ubuntu 22.04
* Windows
* Java 17
* Minecraft Forge 1.20.1
* Paper 1.20.1
* Bash
* SSH
* SCP
* UFW
* GNU Screen
* Vultr Cloud Compute
* JSON configuration
* TACZ
* YSM
* PacketFixer
* XL Packets

## Key Features

* Cloud server provisioning and remote administration
* Forge deployment and runtime configuration
* Existing-world migration and player-data validation
* Server startup, restart, monitoring, and backup scripts
* Client-side and server-side mod classification
* Dependency and compatibility troubleshooting
* TACZ gunpack JSON customization
* CPU, memory, disk, and uptime monitoring
* Automated backup retention and log archiving
* Cross-platform server migration and recovery validation

## Repository Structure

```text
minecraft-server-infrastructure/
├── assets/
│   └── Project assets and visual references
├── configs/
│   └── Example server configuration files
├── docs/
│   ├── case-studies/
│   │   └── Seven deployment and troubleshooting case studies
│   ├── project-lessons-learned.md
│   └── Technical and operational documentation
├── scripts/
│   └── Bash automation and server-management tools
└── README.md
```

## Documentation

| Document                                                   | Description                                                                                    |
| ---------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| [Project Lessons Learned](docs/project-lessons-learned.md) | Engineering principles developed through deployment, debugging, validation, and migration.     |
| [Case Studies](docs/case-studies/)                         | Seven real infrastructure, integration, customization, performance, and migration experiences. |

## Case Studies

The following case studies document real engineering problems encountered during the project. They focus on investigation, technical reasoning, validation, and lessons learned rather than isolated tutorials.

| Case Study                                                                                  | Description                                                                                                                  |
| ------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| [Cloud Server Provisioning](docs/case-studies/cloud-server-provisioning-case-study.md)      | Replacing an unstable peer-to-peer setup with an Ubuntu cloud server and validating the infrastructure layer.                |
| [Forge Deployment](docs/case-studies/forge-deployment-retrospective.md)                     | Transitioning from a Paper baseline to Forge and understanding its runtime structure, dependencies, and startup process.     |
| [World Migration](docs/case-studies/world-migration-case-study.md)                          | Migrating an existing local world to the cloud server, resolving transfer bottlenecks, and validating world and player data. |
| [Mod Integration and Compatibility](docs/case-studies/mod-integration-and-compatibility.md) | Classifying client and server mods, managing dependencies, and testing community-proposed compatibility solutions.           |
| [TACZ Gunpack Customization](docs/case-studies/tacz-gunpack-customization.md)               | Tracing active resource paths and validating JSON-based weapon and ammunition configuration changes.                         |
| [Performance and Stability](docs/case-studies/performance-and-stability-analysis.md)        | Monitoring resource constraints and improving reliability under a large modded workload.                                     |
| [Server Migration and Backup](docs/case-studies/server-migration-and-backup-strategy.md)    | Preserving the complete server environment and validating restoration before retiring the original VPS.                      |

## Project Timeline

### Phase 1 — Infrastructure Planning

The original peer-to-peer multiplayer setup became unreliable over long distances. I compared cloud providers, selected Vultr, deployed Ubuntu, and established remote SSH access.

### Phase 2 — Baseline Validation

Before adding Forge and mods, I deployed a lightweight Paper server to verify Java, networking, firewall rules, port accessibility, and multiplayer connectivity.

### Phase 3 — Forge Deployment

I installed Forge, investigated its generated directory structure, resolved startup problems, and established a clean working Forge environment.

### Phase 4 — World Migration

I compressed and transferred an existing local world to the cloud server, restored it in the Forge environment, and verified world integrity and player-data behavior.

### Phase 5 — Mod Integration

I integrated mods incrementally, separated client-only and server-required components, managed dependencies, and tested compatibility after each change.

### Phase 6 — Configuration and Customization

I investigated TACZ resource loading, located the active gunpack, modified JSON configuration files, and verified the changes during runtime.

### Phase 7 — Performance and Operations

I monitored system resources, created maintenance and recovery scripts, reviewed logs, managed backups, and evaluated infrastructure limitations.

### Phase 8 — Migration and Preservation

Before retiring the original VPS, I compressed and transferred the complete server environment, restored it on Windows, and verified that the project was no longer dependent on one cloud instance.

## Automation Scripts

The `scripts/` directory includes tools for:

* starting, stopping, and restarting the server
* checking server status
* automatically recovering from crashes
* creating and rotating backups
* archiving logs
* monitoring CPU, memory, disk, processes, uptime, and network connections
* verifying Java and required server directories
* generating server status reports

## Engineering Approach

Several principles guided the project:

1. Validate the simplest working environment before adding complexity.
2. Change one variable at a time during troubleshooting.
3. Read logs before making configuration changes.
4. Treat community solutions as hypotheses that require testing.
5. Verify runtime behavior instead of assuming a file is active.
6. Design backups around restoration, not only storage.
7. Document decisions so the process can be repeated.

A more detailed reflection on these principles is available in [Project Lessons Learned](docs/project-lessons-learned.md).

## Current Status

The core infrastructure, automation scripts, operational documentation, seven engineering case studies, and project reflection have been completed.

The repository now documents the complete project lifecycle:

```text
Infrastructure Planning
→ Baseline Validation
→ Forge Deployment
→ World Migration
→ Mod Integration
→ TACZ Customization
→ Performance and Operations
→ Server Migration and Preservation
```

Future improvements may include:

* refreshed deployment screenshots
* automated health alerts
* improved backup verification
* containerized deployment experiments
* a lightweight monitoring dashboard
