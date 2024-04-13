## Getting started

The Salute App is a small application written in pyhton which runs on flask, the code and functionality is tested through the pytest and the user can interact with it through an http server with the help of cherrypy. 

![Salute-App](https://github.com/ntzes/python-app/assets/50707431/17db8fb5-3216-4f72-8f2b-9d562ae66b0d)


## Deploying the app

The app is deployed through Docker on a Cloud Server at Digitalocean and is accessible through the following IP.

http://165.227.133.221

By executing the appropriate commands we download the updated image from Dockerhub and deploy it on our Server.

<code>docker pull ntzes/python-app:latest</code><br>
<code>docker run --name python-app -p 80:80 -d -i -t ntzes/python-app</code>


## Code Changes and Testing

We can make changes in the application by editing app.py, index.html and salute.html which are inside templates as well as styles.css which is inside static. 
After each change and pushing it to the github repository the workflow cicd.yml is automatically executed which tests the code with the pytest tool and if it is successful it proceeds to create a Docker Image based on the Dockerfile and push it to Dockerhub. 
In case something fails a report comes to our github account with the problem that occurred.

As long as everything works properly all we need is to deploy the Docker Image from Dockerhub as we showed in the previous session.
