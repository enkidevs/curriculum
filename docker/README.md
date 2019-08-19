name: Docker

core: core

sections:
	'0':
		- docker
		- containers
		- images
		- networking

standards:
	identify-docker:
		name: Identify the purpose, uses, and main components of Docker
		description: This standard covers identifying what Docker is used for, where in the stack Docker resides, it's purpose in an organization, and the role of the major components.
		objectives:
			0: Identify the role of Docker
			1: Distinguish the major components of docker and explain their purpose
	dockerfiles:
		name: Write Dockerfiles to encapsulate the build process of an application
		description: This standard covers writing Dockerfiles, their syntax, the usage of the different components of the dockerfile, and automation within dockerfiles, and the accurate translation of build processes.
		objectives:
			0: Identify and Analyze the syntax of Dockerfiles
			1: Configure a Dockerfile with an image from the Docker Image Repository
			2: Configure a Dockerfile with an image from a private repository
			3: Configure a Dockerfile to accept Arguments
			4: Add execution steps to a Dockerfile
			5: Move files using a Dockerfile command
			5: Expose ports within a Dockerfile
			6: Use environment variables within a Dockerfile
			7: Use Docker commands to execute the installation steps of an application
			8: Translate the build of an existing application with build documentation into a Dockerfile
			9: Use a Dockerfile to configure the migration of schema to the database server from a pre-built image
			10: Use a Dockerfile to add data to a database server from a data source
			11: Use Docker to containerize and run batch processes
	run-docker:
		name: Use Docker to build and run applications
		description: This standard covers using the Docker CLI and other tools to build and run docker images
		objectives:
			0: Use a Dockerfile to build an image
			1: Run an image in a container
			2: Run an image in multiple containers
			3: Use environment variables to run a container in different deploy phases
			4: Use labels to distinguish between environments
	continuous-integration:
		name: Use a Continuous Integration (CI) tool with Docker to automate the deploy process
		description: This standard deals with building and sending docker images to a cloud service using a continuous integration platform.
		objectives:
			0: Use Docker with a Continuous Integration tool to automate test runs
			1: Use Docker and a Continuous Integration tool to automate the deploy process
	kubernetes:
		name: Use Kubernetes to define the parameters of an application topology
		description: This standard deals with configuration of deploys using Kubernetes to orchastrate containers
		objectives:
			0: Use Kubernetes pod monitoring commands to check the health and other attributes of a pod
			1: Use Kubernetes to label pods and and operate on a group of pods with the same label
			2: Use Docker to build and run a container locally using Minikube
	deploy-kubernetes:
		name: Use Kubernetes to deploy an application to a cloud hosting provider
		description: This standard deals with configuring kuberenetes to deploy with a cloud hosting provider
	deploy-kubernetes-google-cloud:
		name: Use Kubernetes to deploy to Google Cloud
		description: This standard deals specifically with deploying to Google Cloud, using Kubernetes
		objectives:
			1: Identify kubernetes control interface elements in the google developer console
			0: Use Google Cloud to deploy kubernetes pods to Google Kubernetes Engine cluster
	deploy-kubernetes-aws:
		name: Use Kubernetes to deploy to Amazon Web Services (AWS)
		description: This standard deals specifically with deploying to Google Cloud, using Kubernetes
		objectives:
			1: Identify kubernetes control interface elements in the aws developer console
			0: Use AWS to deploy kubernetes pods to AWS Kubernetes Engine cluster

description: Everything you wanted to know about how to containerize and deploy with Docker
