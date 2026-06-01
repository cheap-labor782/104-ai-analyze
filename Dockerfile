# 使用輕量級的 Nginx 映像檔作為基礎
FROM nginx:alpine

# 將目前的 HTML 檔案複製到 Nginx 的預設靜態網頁目錄
COPY 104_ai_predict_dashboard.html /usr/share/nginx/html/index.html

# 暴露 80 連接埠
EXPOSE 80

# 啟動 Nginx
CMD ["nginx", "-g", "daemon off;"]
