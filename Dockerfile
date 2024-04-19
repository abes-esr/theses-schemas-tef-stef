FROM nginx:stable-alpine
COPY schemas /usr/share/nginx/html/schemas
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80
