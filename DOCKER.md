# Docker Development Environment

This project includes a Docker-based development environment with Claude Code pre-installed.

## Quick Start

```bash
# Launch Claude Code in Docker
make claude

# Join existing container
make join-claude
```

## Architecture

- **Base Image**: Python 3.12 on Debian Bookworm
- **Claude Code**: Pre-installed in container
- **Volume Mounts**: Project files and configurations
- **AWS Services**: LocalStack for AWS service emulation

## Available Commands

```bash
make claude          # Launch Claude Code
make join-claude     # Join existing container
make docker-build    # Build Docker image
make docker-stop     # Stop containers
make docker-clean    # Clean up resources
```

## Volume Mounts

| Local Path | Container Path | Purpose |
|------------|----------------|---------|
| `./` | `/workspace` | Project files |
| `~/.claude` | `/home/developer/.claude` | Claude settings |
| `~/.ssh` | `/home/developer/.ssh` | Git authentication |
| `~/.aws` | `/home/developer/.aws` | AWS credentials |

## Services

- **Development Container**: Python 3.12, Poetry, Claude Code, development tools
- **LocalStack**: AWS service emulation at http://localhost:4566

## Troubleshooting

### Container Issues
```bash
docker-compose logs dev
docker-compose down -v
make docker-build
```

### Permission Issues
The container runs as user `developer` (UID 1000) with sudo access.