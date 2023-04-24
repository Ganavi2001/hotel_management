# Use an official nginx base image
FROM nginx:latest

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the HTML files to the container
COPY about.html .
COPY book.html .
COPY footer.html .
COPY home.html .
COPY index.html .
COPY offers.html .

# Copy the CSS files to the container

# Copy the JS files to the container


# Copy the images to the container
COPY assets/ /usr/share/nginx/html/assets
COPY CSS/ /usr/share/nginx/html/CSS

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the nginx server
CMD ["nginx", "-g", "daemon off;"]