server {
        listen 80;
        listen [::]:80;
        client_max_body_size 2M;
        add_header Strict-Transport-Security "max-age=31536000; includeSubDomains; preload" always;

        access_log /var/www/reverse-proxy/anaya.strangerthandata.com/access.log;
        error_log  /var/www/reverse-proxy/anaya.strangerthandata.com/error.log;

        server_name anaya.strangerthandata.com;
        
        location / {
                proxy_pass http://localhost:8105;
                proxy_set_header Accept-Encoding "";
                proxy_set_header Host $host;
                proxy_set_header X-Real-IP $remote_addr;
                proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
                proxy_set_header X-Forwarded-Proto $scheme;
        }
}

