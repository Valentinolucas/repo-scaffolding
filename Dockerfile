# Use an official Python runtime as the base image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /tla-example

# Copy the requirements file and install dependencies
COPY tla_example /tla-example

RUN pip install -r requirements.txt

# Expose the port on which the FastAPI app will run (8080 by default)
EXPOSE 8080

# Command to start the FastAPI app
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]