# Use the official Red Hat Apache httpd base image
FROM registry.redhat.io/rhscl/httpd-24-rhel7

# Copy the content of the src directory to the default Apache root directory
COPY src/ /opt/app-root/src/

# Expose the port 8080
EXPOSE 8080

# Set the default command to run Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"]