FROM nginx:alpine
# 將當前目錄下所有檔案複製到網頁伺服器目錄
COPY . /usr/share/nginx/html/
# 如果您的主檔名不是 index.html，請記得在這裡重新命名
# RUN mv /usr/share/nginx/html/104_ai_predict_dashboard.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
