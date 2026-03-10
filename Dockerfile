FROM python:3.13-slim

WORKDIR /app

# Устанавливаем зависимости
RUN pip install aiogram==3.13.0 python-dotenv==1.0.1

# Копируем файлы
COPY bot.py .
COPY database.py .

CMD ["python", "bot.py"]
