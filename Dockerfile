# Use an official Python runtime as a parent image
FROM python:3.10.13

# Set environment variables for Django
ENV PYTHON UNBUFFERED 1
ENV DJANGO_SETTINGS_MODULE=churn_prediction_project.settings

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
