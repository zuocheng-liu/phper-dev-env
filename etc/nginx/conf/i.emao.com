server {
    listen 80;

    root /home/work/chexun/app/usercenter;
    index index.html index.htm index.php;

    server_name i.emao.com;
    if (!-e $request_filename) 
    {
        rewrite  ^(.*)$  /index.php  last;
    }
    
    location ~ ^/(\d*)/article/(\d*)/(\d*)\.html$ {
        proxy_pass http://www.emao.com;
    }
    
    location / {
        #rewrite ^(.*)$  /index.php last;
    }
   
    location ~ .*\.(php|php5)?$
    {   
        fastcgi_pass unix:/tmp/php-cgi.sock;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        include fastcgi_params;
        break;
    }

    location ~ .*\.(gif|jpg|jpeg|png|bmp|swf)$
    {
        expires      30d;
    }

    location ~ .*\.(js|css)?$
    {
        expires      23h;
    }    # Only for nginx-naxsi used with nginx-naxsi-ui : process denied requests
    location ~ /\.ht {
       deny all;
    }
}
