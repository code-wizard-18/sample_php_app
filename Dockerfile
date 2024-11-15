# Use the official PHP image with Apache
FROM php:8.2-apache

# Copy project files into the container
COPY /src /var/www/html/

# Set the correct file permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Enable Apache mod_rewrite (optional, but often useful for PHP apps)
RUN a2enmod rewrite

# Expose the default HTTP port
EXPOSE 80
