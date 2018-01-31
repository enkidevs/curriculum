## Containers

Read more link: https://www.docker.com/what-container

Containers are a way of isolating an application with its own environment. It's alightweight alternative to full-blown virtualization.

They are the fundamental building blocks of the Docker toolkit and effectively represent runtime instances of Docker images (more on Docker images later).

A container can be viewed as an independent software environment that includes everything it needs to execute. We can use containers to isolate applications from each other and from the underlying infrastructure they are built on.

In some sense, we can think of a Docker container as a light-weight virtual machine. But unlike a VM which creates a whole virtual operating system each time it runs, Docker's containerization architecture allows it to share a lot of the host's operating system resources across containers.

A virtual machine is more isolated from the host but much heavier because it requires more resources. Docker is less isolated but the containers require significantly less resources, allowing us to easily run thousands of them on a single host. This approach provides a non-trivial performance boost and reduces the size of the application.

A container can be created through the Docker CLI using the `docker container create` command:

```bash
# create a container from an `nginx` image
❯ docker container create nginx

# create a container from an `nginx` image, and
# give it the name `webserver`
❯ docker container create--name webserver nginx
```

To start or stop the container, we can do the following:

```bash
# start the webserver container
❯ docker container start webserver

# stop the webserver container
❯ docker container stop webserver
```

In fact, creating and starting containers happens so frequently in Docker that we have a command just for that called `docker run`.

In essence: `docker run = docker container create + docker container start`

```bash
# create and start a container
# give it the name `webserver`,
# expose port 80 from within the container to port 8080 on the host,
# run it interactively in the shell
# and instantiate it from an `nginx` image,
❯ docker run --name webserver -p 8080:80 -it nginx
```

PQ: Docker container is more ??? than a VM which allows it to be started, stopped and replicated more ???
Answers: light-weight, efficiently, isolated, frequently
Correct: light-weight, efficiently

RQ: To create and start a container in a single command, we use ???:
Answers: `docker run`, `docker go`, `docker container create+start`, `docker begin`
Correct: `docker run`
