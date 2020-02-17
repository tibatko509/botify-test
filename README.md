Installation and configuration of FLASKR application on ubuntu 16.04 


Potential improvements:
- how would you publish this application in HTTPS mode?

By Generating a valid certificate and a key for the SSL connection. Refer them and debug=True in app.run() locate in the application flaskr.py

- which points would you improve on the security aspects? on other aspects?

To improve the security we can choose a server like Nginx or Apache because both can handle setting up HTTPS. That way we will not directly define the ssl connection in the application.

- how do you plan to backup the application?



- how do you plan to deploy the application with a minimal customer impact?

To have a minimal customer impact, I can deploy the application automaticly with a rollback option in case it doesn't deployed well so it will undeploy it automaticly by putting back the old version.

- how would you ​ scale ​ this application so it can serve a high number of requests?

By implementing an orchestrator such as docker entreprise, kubernetes,... for the auto scalability by define a min and/or max number of intances when it detects a high level of request.



--------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
Step to install and launch the application in a container

- Launch the script to install ansible and the dependencies
	./script_ansible
  - After installing ansible, the script will launch ansible playbook to install docker and the dependencies 
	Step by step
	- install docker
	- build Dockerfile to prepare the application deployment 
	- launch docker command to start the application in a docker container
	- expose the application on port 8080

Open the link in your browser : http://localhost:8080
