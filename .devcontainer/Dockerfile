FROM ruby:3.0.1-slim-buster

RUN apt update \
    && apt install -y --no-install-recommends \
    apt-utils \
    git \
    build-essential \
    ca-certificates \
    procps \
    libsqlite3-dev \
    && apt autoremove -y \
    && apt clean -y \
    && rm -rf /var/lib/apt/lists/* \
    && gem install rubocop rubocop-performance rubocop-rails rubocop-packaging solargraph
