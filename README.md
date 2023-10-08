**Bank Customer Churn Prediction**
The aim of this project to analyze the bank customer's demographics and financial information 
which inculdes customer's age, gender. country, credit score, balance and many others to predict whether the customer will leave the bank or not.

## Dockerization (docker-compose)

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

## Dockerization (docker-file)

Step 1: Create a docker file(as written everything in docker file) in same working directory

Step 2: docker build -t ml_model_image .

Step 3: docker run -p 8000:8000 ml_model_image

Step 4: Run url in Postman: http://localhost:8000/churn_prediction/ 

 ## Docker Hub to push docker Images

Step 1: Login into your docker hub and username: shivashankarrampur
        (https://hub.docker.com)
Step 2: Tag Your Docker Image: 
Before pushing your image to Docker Hub, you should tag it with your Docker Hub username 
and the desired repository name. You can do this using the docker tag command. 
Replace your-image-name with the name of your Docker image, your-dockerhub-username with your Docker Hub 
username, and repository-name with the name you want for your repository on Docker Hub:

docker tag your-image-name your-dockerhub-username/repository-name

EX: docker tag churn_prediction-web shivashankarrampur/bank_customer_churn_prediction

Step 3 : Push Your Docker Image: Once you have tagged your Docker image, 
you can push it to Docker Hub using the docker push command:

docker push your-dockerhub-username/repository-name

EX: docker push shivashankarrampur/bank_customer_churn_prediction 

 ## Pull image from Docker Hub and Run it local Machine

Step 1: Login into your docker hub and username: shivashankarrampur
        (https://hub.docker.com)
Step 2: Go to requires imges anc click on pull cmd and copy it.
Step 3: Run it in your local command as shown below:
   Ex: docker pull shivashankarrampur/bank_customer_churn_prediction
Step 4: Run docker Images as show below:
  Ex: docker run -d -p 8000:8000 shivashankarrampur/bank_customer_churn_prediction:latest
Step 5: Run your url in your browser.

for Reference: https://docs.docker.com/

Note: 1.Dockerfile is mandetory.
      2. You can run django api either using docker-file cmds or docker-compose cmds