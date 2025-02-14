FROM httpd:alpine

# Copy the HTML file and any necessary assets into the container
COPY index.html image.jpg styles.css /usr/local/apache2/htdocs/
# Copy any other assets or files your HTML page depends on

# Expose port 80 to serve web traffic
EXPOSE 80

# Command to start Apache and serve the HTML page
CMD ["httpd-foreground"]
