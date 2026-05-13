print("✅ المساعد التنفيذي المباشر جاهز للتجربة بدون API")
while True:
    user_input = input("👤 أنت (المدير): ")
    if user_input.lower() in ['خروج', 'exit', 'quit']:
        print("👋 وداعاً!")
        break
    print(f"🤖 المساعد التنفيذي: استلمت أمرك -> {user_input}")
