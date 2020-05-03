# wordpressi paigaldusskript
#
        # paigaldame teenuse
        echo "Paigaldame wordpressi"
        wget https://wordpress.org/latest.tar.gz
        tar -xvf latest.tar.gz
        cp wordpress/wp-config-sample.php wordpress/wp-config.php
        sed -i ‘/s/DB__name/wordpress/g/ /var/www/html/wordpress/wp-config.php
        sed -i ‘/s/DB_user/wpuser/g/ /var/www/html/wordpress/wp-config.php
        sed -i ‘s/DB_PASSWORD/qwerty/g/ /var/www/html/wordpress/wp-config.php
        sed -i ‘s/DB_HOST/localhost/g/ /var/www/html/wordpress/wp-config.php
        echo "Wordpress on paigaldatud"
# skripti lõpp

