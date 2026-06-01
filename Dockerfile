FROM nginx:alpine

# 清除預設檔案
RUN rm -rf /usr/share/nginx/html/*

# 複製所有檔案
COPY . /usr/share/nginx/html/

# --- 除錯：在日誌中印出檔案列表，解決 404 問題 ---
RUN echo "--- 目錄結構檢查 ---" && ls -R /usr/share/nginx/html/
# --------------------------------------------------

# 設定 Nginx
RUN echo 'server { \
    listen 80; \
    location / { \
        root /usr/share/nginx/html; \
        index index.html; \
        try_files $uri $uri/ /index.html; \
    } \
}' > /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
