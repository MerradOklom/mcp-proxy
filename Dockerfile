FROM ghcr.io/tbxark/mcp-proxy:latest

# Set the working directory
WORKDIR /app

# Copy the entrypoint script into the image
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# Expose the default port
EXPOSE 9090

# Set the entrypoint
ENTRYPOINT ["/app/entrypoint.sh"]
