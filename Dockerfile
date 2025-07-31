# Dockerfile for development environment
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
    bind9-utils \
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

# Create root's directory structure
RUN mkdir -p /root/projects/current-project && \
    mkdir -p /root/.cache/pypoetry && \
    mkdir -p /root/.ssh && \
    chmod 700 /root/.ssh

# Configure Poetry to NOT use in-project virtualenvs
RUN poetry config virtualenvs.in-project false

# Set working directory
WORKDIR /root/projects/current-project

# Switch to root and configure environment
USER root

# Set up root's bash environment with useful aliases and settings
RUN echo '# Useful aliases' >> /root/.bashrc && \
    echo 'alias ll="ls -la"' >> /root/.bashrc && \
    echo 'alias la="ls -A"' >> /root/.bashrc && \
    echo 'alias l="ls -CF"' >> /root/.bashrc && \
    echo 'alias ..="cd .."' >> /root/.bashrc && \
    echo 'alias ...="cd ../.."' >> /root/.bashrc && \
    echo 'alias gs="git status"' >> /root/.bashrc && \
    echo 'alias gd="git diff"' >> /root/.bashrc && \
    echo 'alias gl="git log --oneline -10"' >> /root/.bashrc && \
    echo 'alias dc="docker compose"' >> /root/.bashrc && \
    echo 'alias tree="find . -print | sed -e \"s;[^/]*/;|____;g;s;____|; |;g\""' >> /root/.bashrc && \
    echo '' >> /root/.bashrc && \
    echo '# Environment settings' >> /root/.bashrc && \
    echo 'export EDITOR=vim' >> /root/.bashrc && \
    echo 'export HISTSIZE=10000' >> /root/.bashrc && \
    echo 'export HISTFILESIZE=20000' >> /root/.bashrc && \
    echo 'export HISTCONTROL=ignoreboth:erasedups' >> /root/.bashrc && \
    echo '' >> /root/.bashrc && \
    echo '# Better prompt showing git branch' >> /root/.bashrc && \
    echo 'parse_git_branch() {' >> /root/.bashrc && \
    echo '    git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/ (\1)/"' >> /root/.bashrc && \
    echo '}' >> /root/.bashrc && \
    echo 'export PS1="\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]\$ "' >> /root/.bashrc && \
    echo '' >> /root/.bashrc && \
    echo '# Auto-activate Poetry virtualenv if pyproject.toml exists' >> /root/.bashrc && \
    echo 'if command -v poetry &> /dev/null && [ -f "pyproject.toml" ]; then' >> /root/.bashrc && \
    echo '    VENV_PATH=$(poetry env info --path 2>/dev/null)' >> /root/.bashrc && \
    echo '    if [ -n "$VENV_PATH" ] && [ -f "$VENV_PATH/bin/activate" ]; then' >> /root/.bashrc && \
    echo '        source "$VENV_PATH/bin/activate"' >> /root/.bashrc && \
    echo '    fi' >> /root/.bashrc && \
    echo 'fi' >> /root/.bashrc && \
    echo '' >> /root/.bashrc && \
    echo '# Useful functions' >> /root/.bashrc && \
    echo 'mkcd() { mkdir -p "$1" && cd "$1"; }' >> /root/.bashrc && \
    echo 'extract() {' >> /root/.bashrc && \
    echo '    if [ -f "$1" ]; then' >> /root/.bashrc && \
    echo '        case "$1" in' >> /root/.bashrc && \
    echo '            *.tar.bz2) tar xjf "$1" ;;' >> /root/.bashrc && \
    echo '            *.tar.gz) tar xzf "$1" ;;' >> /root/.bashrc && \
    echo '            *.tar) tar xf "$1" ;;' >> /root/.bashrc && \
    echo '            *.zip) unzip "$1" ;;' >> /root/.bashrc && \
    echo '            *) echo "Unknown archive format" ;;' >> /root/.bashrc && \
    echo '        esac' >> /root/.bashrc && \
    echo '    fi' >> /root/.bashrc && \
    echo '}' >> /root/.bashrc

# Install additional useful development tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    # Search and file tools
    ripgrep \
    fd-find \
    bat \
    # Network tools
    httpie \
    # JSON tools
    jo \
    # Process monitoring
    glances \
    # DNS tools
    dnsutils \
    && rm -rf /var/lib/apt/lists/* && \
    # Create symlinks for fd and bat (Debian names them differently)
    ln -s /usr/bin/fdfind /usr/local/bin/fd && \
    ln -s /usr/bin/batcat /usr/local/bin/bat

# Configure git globally as root
RUN git config --global --add safe.directory '*' && \
    git config --global color.ui auto && \
    git config --global core.editor vim

# Configure system-wide git safe directories
RUN echo "[safe]" >> /etc/gitconfig && \
    echo "    directory = /root/projects/current-project" >> /etc/gitconfig

# Set up vim with basic config
RUN echo 'set number' >> /root/.vimrc && \
    echo 'set autoindent' >> /root/.vimrc && \
    echo 'set expandtab' >> /root/.vimrc && \
    echo 'set tabstop=4' >> /root/.vimrc && \
    echo 'set shiftwidth=4' >> /root/.vimrc && \
    echo 'syntax on' >> /root/.vimrc

# Note: Running as root to avoid Windows/Docker permission issues
# The docker-compose.yml should NOT specify user: "1000:1000"

# Default command keeps container running
CMD ["tail", "-f", "/dev/null"]