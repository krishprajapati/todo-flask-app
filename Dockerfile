# Use official Python image
FROM python:3.11-slim

# Set working directory inside Docker container
WORKDIR /app

# Copy project files to container
COPY . .

# Install Python packages from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Open port 5000
EXPOSE 5000

# Start the Flask app
CMD ["python", "app.py"]
