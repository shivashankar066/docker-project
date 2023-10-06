# Use an official Python runtime as a parent image
FROM python:3.10

# Set environment variables
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SETTINGS_MODULE churn_prediction_project.settings

# Set the working directory in the container
WORKDIR /app

# Install any dependencies your project may have
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Install Gunicorn
RUN pip install gunicorn

# Copy your project code into the container
COPY . /app/

# Expose the port your application will run on
EXPOSE 8000

# Run your Django application
CMD ["gunicorn", "churn_prediction_project.wsgi:application", "--bind", "0.0.0.0:8000"]
