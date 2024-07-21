# syntax=docker/dockerfile:1.4


# Base Image
# =============================================================================
FROM ubuntu:latest

# Install dependencies and utilities
RUN apt-get update && apt-get install -y \
    default-jdk \
    wget \
    unzip \
    x11-apps \
    git \
    vim \
    curl \
    libgl1-mesa-glx \
    libgl1-mesa-dri \
    && rm -rf /var/lib/apt/lists/*

# Install Processing
WORKDIR /opt
RUN wget https://download.processing.org/processing-4.0.1-linux-x64.tgz -O processing.tgz \
    && tar -xvzf processing.tgz \
    && mv processing-4.0.1 processing \
    && rm processing.tgz
ENV PATH="/opt/processing:$PATH"

# Configure environment for X11 forwarding to enable GUI
ENV DISPLAY=host.docker.internal:0.0

# Install Processing libraries
WORKDIR /opt/processing/modes/java/libraries
RUN wget https://github.com/processing/processing-sound/releases/download/latest/sound.zip \
    && unzip sound.zip && rm sound.zip
RUN wget https://github.com/processing/processing-video/releases/download/latest/video.zip \
    && unzip video.zip && rm video.zip
RUN wget http://www.sojamo.de/libraries/controlP5/releases/latest/controlP5.zip \
    && unzip controlP5.zip && rm controlP5.zip
RUN wget http://toxiclibs.org/downloads/toxiclibs-complete.zip \
    && unzip toxiclibs-complete.zip && rm toxiclibs-complete.zip
