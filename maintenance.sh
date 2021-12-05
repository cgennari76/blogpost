sudo apt install php8.0-common php8.0-bcmath php8.0-json php8.0-mbstring php8.0-cli php8.0-fpm php8.0-json php8.0-pdo php8.0-mysql php8.0-zip php8.0-gd  php8.0-mbstring php8.0-curl php8.0-xml php8.0-bcmath php8.0-json openssl php8.0-tokenizer phpcurl php-xml

cd /var/www/
git clone http://www.github.com/cgennari76.git
sudo chown -R www-data:www-data /var/www/blogpost

#after copying vendor and making a .env file and composer.json is matching
sudo composer update --lock
sudo composer update

php artisan --version
php -v

#change nginx
location = / {
    return 301 http://www.vstrexjet.com/home;
}