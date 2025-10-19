# Use Alpine Linux as base image (lightweight)
FROM alpine:latest

# Install bash and required tools
RUN apk add --no-cache bash lsof procps

# Create app directory
WORKDIR /app

# Copy the health check script
COPY health-check.sh .

# Make it executable
RUN chmod +x health-check.sh

# Run the health checker when container starts
CMD ["./health-check.sh"]
