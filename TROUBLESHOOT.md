🚀 Apache Not Running
Solution:
    sudo systemctl restart apache2
    sudo systemctl enable apache2

🚀 MySQL Not Running
Solution:
    sudo systemctl restart mysql
    sudo journalctl -u mysql --no-pager | tail -20

🚀 Cannot Access Website
Solution:
    Ensure port 80 (HTTP) is open in AWS Security Group.
    Restart Apache:
        sudo systemctl restart apache2

🚀 PHP Files Download Instead of Executing
Solution:
    sudo apt install libapache2-mod-php -y
    sudo systemctl restart apache2


🚀 Permission Denied for Script Execution
Solution:
    chmod +x lamp-setup.sh

🚀 Firewall Blocking Web Access
Solution:
    sudo ufw allow 80/tcp
    sudo ufw allow 22/tcp
    sudo ufw enable
