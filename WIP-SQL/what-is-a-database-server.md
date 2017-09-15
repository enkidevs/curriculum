# What is a database server?
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[More on database servers](http://ecomputernotes.com/fundamental/what-is-a-database/what-is-a-database-server)'

---
## Content

A database server can be the *hardware* part of a database. A computer dedicated to perform database storage an retrieval. Such a hardware runs the database software  application (DBMS - database management system). It receives requests from the **client machines** and searches the collection for the **requested records**.

As a software, it means the backend (also called instance) part of an database application. The backend handles tasks such as data analisys, storage, data manipulation and other non-user specific tasks. In general, database management systems provide database-server functionality. There are some DBMS[1] (such as MySQL) which rely exclusively on the *client-server model*[2].


Note it's not mandatory that the actual data is hosted *on the same hardware server* as the database application.

Considering a small or mid-sized setup. The hardware server will usually host the backend part of the software and the database. Think about a school's database system. The application will connect to the database via specific ports and use inter-process communication[3] to log into and access the data. The users will connect to the database via the client side of the application.

In larger setups, the volume of data transactions can be so big that one single PC wouldn't be able to handle the work. In this case the software application and database will be hosted on two different machines.
---
## Practice

Consider any online game server. Do you think it would be worth it to host the actual data and the database application on different machines?
???

* Yes, it would help prevent players experiencing lag problems
* No, it will make the client-server communication even more costful
* It wouldn't affect the performance of the game

---
## Revision

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2

---
## Footnotes

[1:DBMS]
Database management system.

[2:Client-server model]
Is a distributed communication framework over the network. It devides the tasks between providers of a resource/service (servers) and the ones that request a service/resource (clients).

[3:inter-process communicaiton]
Is a set of programming interfaces. It enables users to coordinate activities among different program processes that run concurrently. This allows a program to handle different user requests at the same time.
