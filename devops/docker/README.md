name: Docker

core: core

sections:
	'0':
		- docker
		- containers
		- images
		- networking

standards:
	dockerfiles:
		name: Write Dockerfiles to encapsulate the build process of an application
		description: This standard covers writing Dockerfiles, their syntax, the usage of the different components of the dockerfile, and automation within dockerfiles, and the accurate translation of build processes.
		objectives:
			0: Configure a Dockerfile with an image from the Docker Image Repository
			1: Configure a Dockerfile with an image from a private repository
			2: Configure a Dockerfile to accept Arguments
			3: Add execution steps to a Dockerfile
			4: Move files using a Dockerfile command
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



description: Everything you wanted to know about how to containerize and deploy with Docker
