# Use the official Python image as a base
FROM python:3.11-slim

# Set the work directory to /app
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt ./

# Install the dependencies from the requirements file
RUN pip install -r requirements.txt

# Copy the application code into the container
COPY . ./

# Expose the port that gunicorn will listen on
EXPOSE 8000

# Define the command to run gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]
