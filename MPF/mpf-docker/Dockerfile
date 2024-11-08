# Use an official Python base image
FROM python:3.10-slim

# Set environment variables to reduce interaction
ENV DEBIAN_FRONTEND=noninteractive

# Install required dependencies
RUN apt-get update && \
    apt-get install -y \
    libffi-dev libssl-dev libjpeg-dev \
    libglib2.0-dev \
    libegl1 \
    libxkbcommon0 \
    libgl1 \
    libdbus-1-3 \
    libxcb1 \
    libxcb-cursor0 \
    libxcb-util1 \
    libx11-xcb1 \
    libxrender1 \
    libxi6 \
    libxrandr2 \
    git && \
    pip install --upgrade pip


# Install MPF and MPF-MC (Mission Pinball Framework and Media Controller)
RUN pip install mpf --pre
RUN pip install mpf-monitor --pre
RUN pip install mpf-mc

# Set up a working directory for MPF projects
WORKDIR /mpf

# Expose the port for MPF
EXPOSE 8000
