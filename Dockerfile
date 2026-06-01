FROM nginx:alpine

# 將當前目錄下所有檔案（包含 index.html 等）直接拷貝到 Nginx 目錄
# 注意：如果您的 GitHub 根目錄包含這四個 HTML 檔案，這樣寫就沒問題
COPY . /usr/share/nginx/html/

# 直接把主頁設定為 index.html，確保瀏覽器打開時預設顯示它
# 如果您的主頁是 104_ai_predict_dashboard.html，請將下方的檔案名稱改對
RUN cp /usr/share/nginx/html/104_ai_predict_dashboard.html /usr/share/nginx/html/index.html

# 配置 Nginx
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
