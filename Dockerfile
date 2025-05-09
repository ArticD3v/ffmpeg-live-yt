FROM --platform=linux/amd64 ubuntu:22.04

# Set environment to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies: ffmpeg, python, pip
RUN apt update && \
    apt install -y ffmpeg python3 python3-pip curl && \
    apt clean && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy your Python files to the container
COPY main.py keep_alive.py ./

# Install Flask
RUN pip3 install flask

# Expose a random port just in case the Flask server needs access
EXPOSE 8080

# Start the script
CMD ["python3", "main.py"]
