
FROM nginx:alpine

COPY bulid /build
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080
EXPOSE 80

CMD (tail -F /var/log/nginx/access.log &) && exec nginx -g "daemon off;"