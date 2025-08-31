# 基于 Nginx 镜像
FROM nginx:alpine

# 将本地 dist 目录的内容复制到 Nginx 的默认网页目录
COPY dist/ /usr/share/nginx/html/

# 暴露 80 端口
EXPOSE 6880

# 启动 Nginx
CMD ["nginx", "-g", "daemon off;"]
