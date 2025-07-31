# Dockerfile for augint-library development environment
# Optimized for Claude Code SSH access and IDE integration

FROM python:3.12-bookworm

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    POETRY_VERSION=2.1.3 \
    POETRY_HOME=/opt/poetry \
    POETRY_NO_INTERACTION=1

# Install system dependencies and development tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    # Build essentials
    build-essential \
    git \
    curl \
    ca-certificates \
    # Development tools
    vim \
    nano \
    less \
    make \
    procps \
    htop \
    jq \
    netcat-openbsd \
    sudo \
    iproute2 \
    dos2unix \
    # Python development
    python3-dev \
    # AWS CLI dependencies
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Install GitHub CLI
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg && \
    chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null && \
    apt-get update && \
    apt-get install -y gh && \
    rm -rf /var/lib/apt/lists/*

# Install AWS CLI v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf awscliv2.zip aws/

# Install AWS SAM CLI
RUN pip install aws-sam-cli

# Install AWS Session Manager Plugin for SSO
RUN curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb" && \
    dpkg -i session-manager-plugin.deb && \
    rm session-manager-plugin.deb

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 - && \
    ln -s /opt/poetry/bin/poetry /usr/local/bin/poetry

# Install Node.js (required for Claude Code)
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/*

# Install AWS CDK CLI
RUN npm install -g aws-cdk

# Install Claude Code globally
RUN npm install -g @anthropic-ai/claude-code

# Install Playwright with Chrome browser (required by MCP server)
RUN npx playwright install chrome --with-deps

# Set Playwright to run in headless mode by default
ENV PLAYWRIGHT_BROWSERS_PATH=/ms-playwright
ENV PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD=0

# No SSH configuration needed - we'll use docker exec

# Create non-root user with sudo privileges
RUN useradd -m -u 1000 -s /bin/bash developer && \
    echo 'developer ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
    mkdir -p /home/developer/.ssh && \
    chmod 700 /home/developer/.ssh && \
    chown -R developer:developer /home/developer

# Create workspace symlink
RUN ln -s /home/developer/project /workspace

# Switch to developer user
USER developer

# Set working directory
WORKDIR /home/developer/projects/current-project

# Pre-create Poetry cache directory
RUN mkdir -p /home/developer/.cache/pypoetry

# Configure Poetry to NOT use in-project virtualenvs
RUN poetry config virtualenvs.in-project false

# Configure shell to activate Poetry's virtualenv automatically
RUN echo '# Auto-activate Poetry virtualenv' >> /home/developer/.bashrc && \
    echo 'if command -v poetry &> /dev/null && [ -f "pyproject.toml" ]; then' >> /home/developer/.bashrc && \
    echo '    VENV_PATH=$(poetry env info --path 2>/dev/null)' >> /home/developer/.bashrc && \
    echo '    if [ -n "$VENV_PATH" ] && [ -f "$VENV_PATH/bin/activate" ]; then' >> /home/developer/.bashrc && \
    echo '        source "$VENV_PATH/bin/activate"' >> /home/developer/.bashrc && \
    echo '    fi' >> /home/developer/.bashrc && \
    echo 'fi' >> /home/developer/.bashrc

RUN echo 'alias ll="ls -la"' >> /home/developer/.bashrc && \
    echo 'alias la="ls -A"' >> /home/developer/.bashrc && \
    echo 'alias l="ls -CF"' >> /home/developer/.bashrc && \
    echo 'export EDITOR=vim' >> /home/developer/.bashrc

#RUN sudo dos2unix .env
#RUN echo '. .env' >> /home/developer/.bashrc

# Default command keeps container running
CMD ["tail", "-f", "/dev/null"]
