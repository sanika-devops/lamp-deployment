#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt update -y

# Install Apache
echo "Installing Apache..."
sudo apt install apache2 -y

# Enable and start Apache
echo "Enabling and starting Apache..."
sudo systemctl enable apache2
sudo systemctl start apache2

# Install MySQL Server
echo "Installing MySQL Server..."
sudo apt install mysql-server -y

# Secure MySQL (Optional: Uncomment for production)
# echo "Securing MySQL..."
# sudo mysql_secure_installation

# Install PHP and required modules
echo "Installing PHP..."
sudo apt install php libapache2-mod-php php-mysql -y

# Restart Apache to apply changes
echo "Restarting Apache..."
sudo systemctl restart apache2

# Create a sample PHP file
echo "Creating a sample PHP file..."
echo "<?php phpinfo(); ?>" > /var/www/html/index.php

# Set permissions
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

# Display completion message
echo "LAMP Stack installation completed successfully!"
echo "You can access the server via: http://your-server-ip/index.php"

