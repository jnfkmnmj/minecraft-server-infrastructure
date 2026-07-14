# Case Studies

This directory contains a collection of engineering case studies documenting the complete lifecycle of building, deploying, maintaining, and migrating a modded Minecraft Forge server.

Unlike traditional tutorials, these documents focus on real engineering challenges encountered throughout the project. Each case study explains the problem, investigation process, solution, validation, and lessons learned from actual deployment experience.

Together, these documents demonstrate how the project evolved from a simple cloud-hosted Minecraft server into a larger infrastructure engineering project involving Linux administration, software integration, automation, performance analysis, and system migration.

## Case Studies

| Case Study | Description |
|------------|-------------|
| [Cloud Server Provisioning](cloud-server-provisioning-case-study.md) | Replacing an unstable peer-to-peer setup with an Ubuntu cloud server and validating the infrastructure layer. |
| [Forge Deployment](forge-deployment-retrospective.md) | Transitioning from a Paper baseline to Forge and establishing a stable deployment environment. |
| [World Migration](world-migration-case-study.md) | Migrating an existing local Minecraft world to the cloud server while preserving world integrity and player data. |
| [Mod Integration and Compatibility](mod-integration-and-compatibility.md) | Classifying client and server mods, managing dependencies, and systematically resolving compatibility issues. |
| [TACZ Gunpack Customization](tacz-gunpack-customization.md) | Debugging gunpack loading behavior and validating JSON-based weapon customization. |
| [Performance and Stability Analysis](performance-and-stability-analysis.md) | Monitoring system resources and improving the stability of a large Forge modpack. |
| [Server Migration and Backup Strategy](server-migration-and-backup-strategy.md) | Preserving the complete server environment and validating recovery before retiring the original VPS. |

## Engineering Themes

Although each document focuses on a different technical challenge, they collectively illustrate several recurring engineering principles:

- Build and validate infrastructure before increasing system complexity.
- Troubleshoot incrementally by changing one variable at a time.
- Verify runtime behavior instead of relying on assumptions.
- Evaluate community solutions through controlled testing.
- Design backup strategies around successful recovery.
- Document decisions to improve maintainability and future deployments.

## Reading Order

For the best understanding of the project, the case studies are intended to be read in the following order:

1. Cloud Server Provisioning
2. Forge Deployment
3. World Migration
4. Mod Integration and Compatibility
5. TACZ Gunpack Customization
6. Performance and Stability Analysis
7. Server Migration and Backup Strategy

Following this sequence reflects the actual engineering progression of the project, from initial infrastructure planning to long-term maintenance and migration.
