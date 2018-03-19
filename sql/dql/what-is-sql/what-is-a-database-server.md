# What is a database server?
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

inAlgoPool: false


standards:
  sql.connect-client: 5

tags:
  - introduction
  - workout


links:

  - '[More on database servers](http://ecomputernotes.com/fundamental/what-is-a-database/what-is-a-database-server)'

---
## Content

A database server can mean two different things. First, it can be a computer program that provides database services as specified by *client-server model*[1], or it can be the host (hardware part of a database).

A database server, while used as the *hardware* part of a database, is a computer dedicated to perform database storage and retrieval. This computer runs the database software  application (DBMS - database management system). The hardware is the location that the host for the database on the network is pointing to.

When referring to the software, we are talking about the program that receives and interprets requests. These requests are called **Queries** which are requests to store, retrieve, or change data in the database.

Database servers can:
- Read data
- Store data
- Analyze data
- Validate data against a Schema

In a *small application*, something like a side project, the application and database will usually be hosted on the same computer, meaning they won't need to communicate over a network.

A *mid-sized application*, such as an intranet or low-volume website, will most likely be hosted on a dedicated server while the database will be on a separate dedicated server. The application would then connect to the database via a Uniform Resource Locator (URL).

In *high-scale applications*, the volume of data transactions can be so big that one single computer wouldn't be able to handle the work. In this case the software application may be running on hundreds of servers, and the database server will need to become a Cluster of servers, with one server doing the coordination, and other servers hosting portions of the database.

A group of database servers (called a **Cluster**) can coordinate to share data across multiple physical pieces of hardware. This is used for very large databases, or for redundancy. For this reason, the term Database Server increasingly refers to the software, instead of the hardware.


---
## Revision

Speaking about a Cluster of servers, how many servers do the coordination?
???

* Just one of them, while the others are hosting
* All of them do both, host and coordination
* No server, the coordination is done by a computer outside the cluster

---
## Footnotes

[1:Client-server model]
Is a distributed communication framework over the network. It divides the tasks between providers of a resource/service (servers) and the ones that request a service/resource (clients).