FROM coturn/coturn:latest

# Railway passes a dynamic port via the PORT environment variable
ENV PORT=3478

# Run turnserver using our custom config file
CMD turnserver -c /etc/turnserver.conf --listening-port=$PORT
