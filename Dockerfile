

# Base image
FROM ubuntu:22.04

# Environment variables to make apt non-interactive
ENV DEBIAN_FRONTEND=noninteractive

# Update, upgrade, और जरूरी packages install करें
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
        apt-transport-https \
        ca-certificates \
        gnupg \
        curl \
        wget && \
    apt-get upgrade -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Optional: Default command
CMD ["bash"]
