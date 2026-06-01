FROM nginx:alpine

# 將當前目錄下所有檔案複製到伺服器目錄
COPY . /usr/share/nginx/html/

# 強制設定 nginx 設定檔，處理多頁面路由與路徑問題
RUN echo 'server { \
    listen 80; \
    location / { \
        root /usr/share/nginx/html; \
        index index.html; \
        try_files $uri $uri/ /index.html; \
    } \
    # 確保對靜態檔案 (js, css, html) 有正確的 MIME type 與讀取權限 \
    location ~* \.(js|css|png|jpg|jpeg|gif|ico|html)$ { \
        expires 1h; \
        add_header Cache-Control "public"; \
    } \
}' > /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
