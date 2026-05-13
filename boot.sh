#!/bin/bash

echo "🚀 بدء تشغيل المساعد التنفيذي الكامل..."

# تحديث النظام
pkg update -y && pkg upgrade -y

# تثبيت الأدوات الأساسية
pkg install git nodejs python -y

# الدخول للمشروع
cd $(dirname "$0")

# تثبيت مشروع Node إذا موجود
if [ -f "package.json" ]; then
    npm install
fi

# تشغيل تلقائي حسب نوع المشروع
if [ -f "package.json" ]; then
    echo "⚡ تشغيل مشروع ويب (Node.js)..."
    npm run dev &
elif [ -f "index.js" ]; then
    echo "⚡ تشغيل Node مباشر..."
    node index.js &
elif [ -f "main.py" ]; then
    echo "⚡ تشغيل Python..."
    python main.py &
else
    echo "⚡ لا يوجد مشروع جاهز، تشغيل سيرفر ويب تلقائي..."
    python -m http.server 3000 &
fi

# رسالة نهائية
echo "================================="
echo "✅ المساعد التنفيذي يعمل الآن"
echo "🌐 افتح: http://127.0.0.1:3000"
echo "================================="

# إبقاء السيرفر شغال
wait
