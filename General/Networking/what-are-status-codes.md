# What are status codes
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[link to learn more](https://enki.com)'

---
## Content

**Status codes** are 3-digit integers. Part of the server response in **HTTP** protocol that indicates the type of the response.

With the help of **URLs** and HTTP **verbs** a client can make requests to the server, the former being served with a response containing a **status code** and a message *payload*.

The **status code** is used to differentiate responses into different classes and tell the client how to interpret the message. These classes are:

 -  **Informational messages** - with the format `1xx`. These messages were introduced in `HTTP/1.1` are indicate that the response have been received and the process should continue


- **Success messages** - with the format `2xx`. These ones tell the client that the request was acknowledged and successfully processed.
- **Redirection messages** - with the format `3xx`. These messages imply that further action must be taken to complete the request. Usually, they indicate that a different **URL** must be access to fetch a resource
- **Client-error messages** - with the format `4xx`. They are used to tell that the client has made a wrong request. The most famous one is `404` **Not Found** status code that tells the resource is invalid
- **Server-error messages** - with the format `5xx`, showing that the server failed to process the request. Most famous such message is `500` **Internal Server Error**

---
## Practice

What is the format for the success message
??? ?

* `2xx`
* `1xx`
* `5xx`

---
## Revision

What does a client need in order to make a request to the server.
??? and ??? ?

* URLs
* HTTP verbs
* status code
