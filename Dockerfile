# Базовый образ с Nginx
FROM nginx:stable-alpine

# Удаляем дефолтный конфиг и кладём свой
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Кладём статический контент
COPY index.html /usr/share/nginx/html/index.html

# HTTP-порт
EXPOSE 80

# Стандартная команда запуска Nginx
CMD ["nginx", "-g", "daemon off;"]
