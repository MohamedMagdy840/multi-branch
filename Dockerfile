# Use an official lightweight Python image
FROM python:3.12-slim 
 
# Set the working directory
WORKDIR /app

# Copy dependency file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose Flask default port
EXPOSE 5000

# Run the app
CMD ["python", "hello.py"]
