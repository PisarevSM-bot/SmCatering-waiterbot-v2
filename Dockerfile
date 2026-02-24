FROM python:3.13-slim

RUN apt-get update && apt-get install -y \
    build-essential \
    libsqlite3-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем ТОЛЬКО нужные файлы (без риска ошибок)
COPY bot.py .
COPY database.py .
COPY requirements.txt .

CMD ["python", "bot.py"]
