# Use official Python runtime as a parent image
FROM python:3.13-slim

# Set the working directory in the container
WORKDIR /app

# Install any needed packages specified in requirements.txt
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy current directory contents into the container at /app
COPY bot.py .
COPY database.py .

# Run bot.py when the container launches
CMD ["python", "bot.py"]
