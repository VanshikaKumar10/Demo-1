FROM wordpress:latest

# Install git
RUN apt-get update && apt-get install -y git

# Delete the default WordPress files
RUN rm -rf /var/www/html/*

# Clone your repo into the now-empty folder
RUN git clone https://github.com/VanshikaKumar10/Demo-1.git /var/www/html

# Set proper permissions (optional but recommended)
RUN chown -R www-data:www-data /var/www/html
