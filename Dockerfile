FROM python:3.12-slim-bookworm

# Install Node.js (with npm and npx)
RUN apt-get update && apt-get install -y curl gnupg && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/
