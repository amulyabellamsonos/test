# Use an official Python runtime as a parent image
FROM python:2.7-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install numpy

# Make port 80 available to the world outside this container
EXPOSE 400


# Run app.py when the container launches
CMD ["python", "app.py"]
