# 1. Use an official Python runtime as the base image
FROM python:3.9-slim

# 2. Set the working directory inside the container
WORKDIR /hello

# 3. Copy the current directory contents into the container at /app
COPY . /hello

# 4. Install dependencies from requirements.txt
RUN python3 -m pip install -r requirements.txt

# 5. Expose port 5000 for Flask
EXPOSE 5000

# 6. Set environment variables for Flask (optional)
ENV FLASK_APP=hello.py

# 7. Define the default command to run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]

