FROM debian:trixie

# Avoid interactive prompts during apt installation
ENV DEBIAN_FRONTEND=noninteractive

# Update and install dependencies
RUN apt-get update && apt-get install -y \
    g++ \
    pkg-config \
    make \
    libboost-container-dev \
    libfuse3-dev \
    libarchive-dev \
    libgtest-dev \
    pandoc \
    python3 \
    mount \
    brotli \
    coreutils \
    gpg \
    lrzip \
    lzop \
    ncompress \
    valgrind \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /usr/src/fuse-archive

# Copy the source code into the container
COPY . .

# Set the default command to build the project
CMD ["make"]
