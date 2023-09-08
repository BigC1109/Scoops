FROM caddy:latest 
COPY Caddyfile /etc/caddy
RUN chmod 755 /usr/bin/caddy
RUN chmod -R 777 /data
RUN chmod -R 777 /config
RUN chmod -R 777 /srv
CMD ["caddy", "run", "-c", "/etc/caddy/Caddyfile"]
