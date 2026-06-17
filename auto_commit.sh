#!/bin/bash

# Kiểm tra xem có thay đổi nào trong thư mục không
if [[ -n $(git status -s) ]]; then
    echo "Phát hiện thay đổi. Đang tiến hành tự động commit..."
    git add .
    timestamp=$(date "+%Y-%m-%d %H:%M:%S")
    git commit -m "Auto-commit: Cập nhật code lúc $timestamp"
    git push origin main
    echo "Đã tự động đẩy code lên GitHub thành công!"
else
    echo "Không có thay đổi nào mới."
fi