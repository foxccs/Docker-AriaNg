# 使用官方 Nginx Alpine 镜像
FROM nginx:alpine

# 把刚才 build 出来的 dist 拷进去
COPY dist /usr/share/nginx/html

EXPOSE 6880
CMD ["nginx","-g","daemon off;"]
