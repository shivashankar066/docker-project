**Bank Customer Churn Prediction**
The aim of this project to analyze the bank customer's demographics and financial information 
which inculdes customer's age, gender. country, credit score, balance and many others to predict whether the customer will leave the bank or not.

## Dockerization

In this project, I used docker image and container.

Step 1: Create docker-compose.yml and Dockerfile in django as shown its file structure in below:

myproject/
|-- Dockerfile
|-- docker-compose.yml
|-- manage.py
|-- myapp/
|   |-- ...
|-- requirements.txt
|-- ...

Step 2: In your project directory (where your Dockerfile and docker-compose.yml are located), 
open a terminal and run the following commands:

docker-compose build
docker-compose up


Step 3: Access Your Django Application

Once the container is up and running, you can access your Django application by opening a web browser and 
going to http://localhost:8000/. Your Django app should be accessible just like when running it locally.


Step 4: To stop the Docker container (and the Django development server), press Ctrl+C in the terminal 
where the container is running.
If you want to stop the container in the background (detached mode), you can run:
docker-compose down


for Reference: https://docs.docker.com/
