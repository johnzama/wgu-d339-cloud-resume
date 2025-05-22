# Use a minimal base image
FROM nginx:alpine

# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy your styled HTML resume
COPY index.html /usr/share/nginx/html/

# Expose default port
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]