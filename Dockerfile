FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt .

RUN apt-get update && apt-get install -y \
    python3-opengl \
    xvfb \
    x11vnc \
    && pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "main.py"]
