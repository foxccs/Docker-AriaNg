# 使用官方Nginx镜像作为基础
FROM nginx:alpine

# 将dist目录下的所有文件复制到Nginx的默认静态文件目录
COPY dist/ /usr/share/nginx/html/

# 自定义Nginx配置以监听6886端口
RUN echo 'server { \
    listen 6886; \
    root /usr/share/nginx/html; \
    index index.html; \
    location / { \
        try_files $uri $uri/ /index.html; \
    } \
}' > /etc/nginx/conf.d/default.conf

# 暴露6886端口
EXPOSE 6886

# 启动Nginx
CMD ["nginx", "-g", "daemon off;"]
