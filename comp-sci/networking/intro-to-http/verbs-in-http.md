---
author: SebaRaba
type: normal
category: must-know
links:
  - >-
    [www.restapitutorial.com](http://www.restapitutorial.com/lessons/httpmethods.html){website}
  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Verbs in HTTP


---

## Content

While *URLs* indicate the location to which an HTTP request is sent, the action to be performed by the server is specified by the **HTTP verbs**.

To differentiate actions, HTTP protocol comes with a set of formalized request *verbs*:

- `GET`: *fetches* a specific resource indicated by the *URL*.
- `POST`: *creates* a new resource at the specified *URL*[1].
- `PUT`: *updates* an existing resource indicated by the *URL*[2].
- `DELETE`: *removes* a resource pointed by the *URL*[3].
- `HEAD`: similar to `GET`, but transfers only the header and the status of the page[4].
- `OPTIONS`: asks the server to return the available communication methods, without initiating any other actions[5].
- `TRACE`: used for diagnostic purposes, it returns the hops between the client and the server.
- `PATCH`: used as well to *update/modify* an existing resource, but with a specialized set of instructions

As HTTP is an application layer protocol, your actions on different web sites will talk to the server in this way. Navigating to your friend's profile page is equivalent to a `GET` action, sharing a song is done via a `POST` request, editing a comment represents a `PUT` request, while deleting an old, embarrassing photo sends a `DELETE` request.


---

## Practice

Which of the following **HTTP verbs** should be used only for debugging purposes?

???

- `TRACE`
- `OPTIONS`
- `GET`
- `DELETE`
- `PUT`


---

## Revision

Which HTTP verb should be used, by definition, to update an existing resource on the server?

???

- `PUT`
- `HEAD`
- `UPDATE`
- `GET`


---

## Footnotes

[1:POST]
Usually the payload of the POST request contains or indicates the data of the new resource.
[2:PUT]
Similar to the `POST` request, the payload of a `PUT` request carries data necessary for the update.
[3:specialized POST]
`PUT` and `DELETE` can be substituted by specialized `POST` requests with different payload content. i.e.: instead of updating only some fields of an old resource, overwrite it with the new updated resource.
[4:HEAD]
The `HEAD` verb can sometimes be used to check if the targeted resource has changed over time and if there's any need to request it again.
This is possible as the header of a request contain timestamps.
[5:Options]
For example, in case of the server not being able to understand a `PUT` request, sending a `OPTIONS` request first will help us prevent receiving a `400 Bad Request` error.
