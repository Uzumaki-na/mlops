# ---- Base Stage ----
# Use an official Python runtime as a parent image
FROM python:3.10-slim as base

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# ---- Final Stage ----
# Copy the application code from the base stage
COPY ./my_app /app/my_app

# Command to run the application
CMD ["python3", "-m", "my_app.main"]