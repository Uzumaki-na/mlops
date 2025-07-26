# ---- Base Stage ----
# Use an official Python runtime as a parent image
FROM python:3.10-slim AS base

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# ---- Final Stage ----
# Copy the application code from the base stage
COPY ./my_app /app/my_app

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application using gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "my_app.main:app"]