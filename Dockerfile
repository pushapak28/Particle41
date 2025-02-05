# Use a lightweight Python base image
FROM python:3.9-slim

# Set environment variables to avoid Python buffering logs
ENV PYTHONUNBUFFERED 1

# Create a non-root user and set the working directory
RUN useradd --create-home --home-dir /app nonrootuser
WORKDIR /app

# Install application dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files into the container
COPY . /app/

# Change ownership of the files to the non-root user
RUN chown -R nonrootuser:nonrootuser /app

# Switch to the non-root user
USER nonrootuser

# Expose port 5000 for the Flask application
EXPOSE 5000

# Run the application
CMD ["python", "simple_time_service.py"]
