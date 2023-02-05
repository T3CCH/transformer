FROM ubuntu:18.04

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# Create entrypoint
COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
RUN apt-get clean
# Set the working directory
WORKDIR /media

# Start script
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
