# Verbs in HTTP
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - 'http://www.restapitutorial.com/lessons/httpmethods.html'

---
## Content

While the **URLs** indicate the location to which a *request* is sent in the HTTP protocol, the action that should be performed at that specific location is specified by **HTTP verbs**.

To differentiate actions, HTTP protocol comes with a set of formalised request *verbs*:

- `GET`: *fetches* a specific resource indicated by the **URL**
- `POST`: *creates* a new resource at the specified **URL**

Usually the payload of the POST request
contains or indicates the data of the new resource.

- `PUT`: *updates* an existing resource indicated by the **URL**

Similar to the `POST` request, the payload of a `PUT` request carries data necessary for the update.

- `DELETE`: *removes* a resource pointed by the **URL**

Keep in mind that `PUT` and `DELETE` are sometimes considered specialised `POST`s and can be packaged by some frameworks as `POST` request differentiated inside the payload.

- `HEAD`: similar to `GET`, but transfers only the header and the status of the page[1]`
- `CONNECT`: *establishes* a tunnel to the server identified by the **URL**
- ` OPTIONS`: *describes* the options for the communication for the targeted resource
- `TRACE`: used for diagnostic purposes, retrieving hops between the client and the server

`FOOTNOTES`

[1:HEAD]
The `HEAD` verb can sometimes be used to check if the targeted resource has changed because the header contains data such as timestamps.

---
## Practice

What does specify the action that should be performed in a web communication
??? ?

* HTTP verbs
* URL
* request

---
## Revision

Which verb is used to update an existing resource
??? ?

* `PUT`
* `CONNECT`
* `UPDATE`
