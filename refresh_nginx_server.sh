cp podcastify.conf /etc/nginx/sites-available/
if [ -f /etc/nginx/sites-enabled/podcastify.conf ]; then
    rm /etc/nginx/sites-enabled/podcastify.conf
fi
ln -s /etc/nginx/sites-available/podcastify.conf /etc/nginx/sites-enabled/podcastify.conf
systemctl reload nginx.service