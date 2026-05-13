#!/data/data/com.termux/files/usr/bin/bash

echo "🚀 بدء تجهيز المشروع..."

# تحديث النظام
pkg update -y && pkg upgrade -y

# تثبيت الأدوات الأساسية
pkg install git python -y

# تثبيت Aider (المساعد التنفيذي)
pip install aider-chat

# التأكد من أنك داخل مشروع git
if [ ! -d ".git" ]; then
  git init
  git remote add origin https://github.com/Jihad20259/Public.git
fi

# إعداد Git
git config --global user.name "AI Assistant"
git config --global user.email "ai@local.com"

echo "✅ تم تجهيز المشروع بالكامل"

echo "💡 الآن شغل المساعد بكتابة:"
echo "aider"
