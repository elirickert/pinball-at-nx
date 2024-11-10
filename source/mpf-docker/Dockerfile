# Use an official Python base image
FROM python:3.10-bullseye

# Set environment variables to reduce interaction
ENV DEBIAN_FRONTEND=noninteractive
ENV QT_QPA_PLATFORM=xcb
ENV QT_PLUGIN_PATH=/usr/local/lib/python3.10/site-packages/PyQt6/Qt6/plugins
ENV QT_DEBUG_PLUGINS=1 
ENV DISPLAY=:99

# Install required dependencies
RUN apt-get update && \
    apt-get install -y \
    #qt5-default \
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
    libxcb-xinerama0 \
    libxrender1 \
    libxi6 \
    libxrandr2 \
    libfontconfig1 \
    libxkbcommon-x11-0 \
    libxext6 \
    libxcb-icccm4 \
    libxcb-keysyms1 \
    libxcb-shape0 \
    xvfb \
    git && \
    pip install --upgrade pip


# Install MPF and MPF-MC (Mission Pinball Framework and Media Controller)
RUN pip install mpf --pre
RUN pip install mpf-monitor --pre
RUN pip install mpf-mc

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]

# Set up a working directory for MPF projects
WORKDIR /mpf

# Expose the port for MPF
EXPOSE 8000
