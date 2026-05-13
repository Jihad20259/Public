from fastapi import FastAPI
from core.executor import Executor

app = FastAPI()
executor = Executor()

@app.get("/")
def home():
    return {"message": "المساعد التنفيذي جاهز للتشغيل المباشر عبر المتصفح"}

@app.post("/run")
def run_command(cmd: str):
    result = executor.run_command(cmd)
    return {"output": result}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8080)
