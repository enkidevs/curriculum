---
author: nem035
aspects:
  - workout
  - deep
type: normal
category: must-know
links:
  - '[Containers vs VMs](Link: https://blog.netapp.com/blogs/containers-vs-vms/){article}'
  - '[How is Docker different from a virtual machine?](https://stackoverflow.com/questions/16047306/how-is-docker-different-from-a-virtual-machine){discussion}'
---

# Container vs VM

---

## Content

We can think of a Docker container as a light-weight virtual machine. But unlike a VM which creates a whole virtual operating system each time it runs, Docker's containerization architecture allows it to share a lot of the host's operating system resources across containers.

A virtual machine is more isolated from the host but much heavier because it requires more resources. Docker is less isolated but the containers require significantly less resources, allowing us to easily run thousands of them on a single host. This approach provides a non-trivial performance boost and can significantly reduce the size of an application.

Containers only virtualize the operating system, not the underlying hardware. They contain the code, system tools and libraries, and the runtime needed for multiple applications. This is why containers are often preferable when multiple applications using the same operating system are needed.

If virtual machines abstract away the hardware, containers abstract away the operating system.

---

## Practice

Docker container is more ??? than a VM which allows it to be started, stopped and replicated more ???

* light-weight
* efficiently
* isolated
* safely

---

## Revision

A VM is an abstraction on top of ??? while a Docker container is an abstraction on top of ???

* hardware
* operating system
* cpu
* software


