# Minecraft Server Infrastructure

A computer science infrastructure project documenting the deployment, troubleshooting, automation, maintenance, and migration of a modded Minecraft Forge server across Linux and Windows environments.

The project began as an attempt to replace an unstable peer-to-peer multiplayer setup with a dedicated cloud server. It later developed into a broader exploration of Linux administration, cloud infrastructure, software integration, automation, performance analysis, data migration, and recovery planning.

## Project Objectives

- Deploy a Forge 1.20.1 server on Ubuntu Linux
- Build a reliable environment for cross-region multiplayer
- Learn Linux and SSH-based server administration
- Migrate an existing multiplayer world to a dedicated server
- Integrate and troubleshoot a large collection of Forge mods
- Automate routine server-management tasks
- Monitor system performance and resource limitations
- Preserve and migrate the complete server environment
- Document real troubleshooting processes and engineering decisions

## Technologies

- Ubuntu 22.04
- Windows
- Java 17
- Minecraft Forge 1.20.1
- Paper 1.20.1
- Bash
- SSH and SCP
- UFW
- GNU Screen
- Vultr Cloud Compute
- JSON configuration
- TACZ
- YSM
- PacketFixer
- XL Packets

## Key Features

- Cloud server provisioning and remote administration
- Forge deployment and runtime configuration
- Existing-world migration and player-data validation
- Automated server startup, shutdown, restart, and recovery
- Backup creation, validation, retention, and log archiving
- Server health monitoring and diagnostic reporting
- Client-side and server-side mod classification
- Dependency and compatibility troubleshooting
- TACZ gunpack JSON customization
- CPU, memory, disk, uptime, and network monitoring
- Cross-platform server migration and recovery validation
- Structured technical documentation and engineering case studies

## Repository Structure

```text
minecraft-server-infrastructure/
├── assets/
│   └── Screenshots, diagrams, and visual project resources
├── configs/
│   ├── README.md
│   └── Example server configuration files
├── docs/
│   ├── Infrastructure/
│   │   └── Server setup, networking, security, and runtime environment
│   ├── Operations/
│   │   └── Deployment, monitoring, maintenance, and update procedures
│   ├── Optimization/
│   │   └── Performance tuning, mod management, and troubleshooting
│   ├── case-studies/
│   │   └── Seven detailed engineering case studies
│   ├── project/
│   │   ├── project-lessons-learned.md
│   │   └── project-timeline.md
│   ├── recovery/
│   │   └── Backup, incident-response, and restoration documentation
│   ├── cron-automation.md
│   ├── file-transfer-guide.md
│   └── README.md
├── scripts/
│   ├── backup/
│   │   └── Backup creation, validation, cleanup, and log archiving
│   ├── management/
│   │   └── Server startup, shutdown, restart, update, and recovery
│   ├── monitoring/
│   │   └── Health checks, diagnostics, summaries, and reports
│   └── README.md
└── README.md
```

## Documentation

The `docs/` directory contains the complete project knowledge base.

| Section | Description |
|---|---|
| [Infrastructure](docs/Infrastructure/) | Ubuntu setup, Java environment, SSH, networking, firewall configuration, and security. |
| [Operations](docs/Operations/) | Deployment workflows, server lifecycle, monitoring, maintenance, updates, and capacity planning. |
| [Optimization](docs/Optimization/) | Performance tuning, log analysis, mod management, troubleshooting, and scaling. |
| [Recovery](docs/recovery/) | Backup strategies, crash recovery, incident response, and server restoration. |
| [Project](docs/project/) | Project timeline, development progression, and lessons learned. |
| [Case Studies](docs/case-studies/) | Seven real engineering cases covering deployment, integration, optimization, and migration. |

Additional standalone documentation includes:

- [Cron Automation](docs/cron-automation.md)
- [File Transfer Guide](docs/file-transfer-guide.md)

## Case Studies

The following case studies document real engineering problems encountered during the project. They focus on investigation, technical reasoning, solution design, validation, and lessons learned rather than isolated tutorials.

| Case Study | Description |
|---|---|
| [Cloud Server Provisioning](docs/case-studies/cloud-server-provisioning-case-study.md) | Replacing an unstable peer-to-peer setup with an Ubuntu cloud server and validating the infrastructure layer. |
| [Forge Deployment](docs/case-studies/forge-deployment-retrospective.md) | Transitioning from a Paper baseline to Forge and understanding its runtime structure, dependencies, and startup process. |
| [World Migration](docs/case-studies/world-migration-case-study.md) | Migrating an existing local world to the cloud server, resolving transfer bottlenecks, and validating world and player data. |
| [Mod Integration and Compatibility](docs/case-studies/mod-integration-and-compatibility.md) | Classifying client and server mods, managing dependencies, and testing community-proposed compatibility solutions. |
| [TACZ Gunpack Customization](docs/case-studies/tacz-gunpack-customization.md) | Tracing active resource paths and validating JSON-based weapon and ammunition configuration changes. |
| [Performance and Stability](docs/case-studies/performance-and-stability-analysis.md) | Monitoring resource constraints and improving reliability under a large modded workload. |
| [Server Migration and Backup](docs/case-studies/server-migration-and-backup-strategy.md) | Preserving the complete server environment and validating restoration before retiring the original VPS. |

## Automation Scripts

The `scripts/` directory contains reusable Bash utilities organized by function.

### Backup

Scripts for:

- backing up worlds and configuration files
- creating backup directories
- archiving logs
- validating backup files
- removing outdated backups

### Management

Scripts for:

- starting and stopping the server
- restarting the server safely
- automatically recovering from crashes
- updating server files
- verifying the Java installation

### Monitoring

Scripts for:

- checking server status and uptime
- monitoring disk space and network connections
- examining logs and crash reports
- verifying required server files
- listing server processes
- generating system summaries and reports

The scripts are reference implementations and may require environment-specific adjustments before deployment.

## Project Timeline

The project developed through seven major phases:

1. Project planning
2. Linux and infrastructure fundamentals
3. Initial server deployment
4. Integration and troubleshooting
5. Automation and operations
6. Documentation and knowledge organization
7. Case studies and final project review

The complete timeline is available in [Project Timeline](docs/project/project-timeline.md).

## Engineering Approach

Several principles guided the project:

1. Validate the simplest working environment before adding complexity.
2. Change one variable at a time during troubleshooting.
3. Read logs before making configuration changes.
4. Treat community solutions as hypotheses that require testing.
5. Verify runtime behavior instead of assuming a file is active.
6. Design backups around successful restoration, not only storage.
7. Document decisions so that technical processes can be repeated.

A detailed reflection is available in [Project Lessons Learned](docs/project/project-lessons-learned.md).

## Current Status

The first major version of the project is complete.

Current deliverables include:

- cloud-hosted Linux infrastructure
- Forge deployment and mod-integration workflows
- categorized automation scripts
- configuration templates
- structured technical documentation
- seven engineering case studies
- a project timeline and final engineering reflection
- backup and cross-platform recovery documentation

## Future Improvements

Potential future work includes:

- redeploying and maintaining a live Forge server
- adding deployment and monitoring screenshots
- expanding automation capabilities
- improving backup verification
- implementing automated health alerts
- creating a lightweight monitoring dashboard
- experimenting with containerized deployment
