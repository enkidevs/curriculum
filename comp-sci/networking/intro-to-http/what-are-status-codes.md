---
author: SebaRaba
type: normal
category: must-know
links:
  - >-
    [HTTP - Status
    Codes](https://www.tutorialspoint.com/http/http_status_codes.htm){website}
  - >-
    [HTTP Response Status
    Codes](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# What Are Status Codes?


---

## Content

**Status codes** are 3-digit integers, part of the server's response in the HTTP protocol.

By using URLs and HTTP verbs (more on these in a future workout), a client can make requests to the server, which sends back a response containing the *status* of the request and a message *payload*.

The *status code* indicates whether the request has been successfully processed or not. The codes are grouped into *five* classes:

- **Informational messages** (`1xx`): This class was introduced in `HTTP/1.1` and indicates that everything is OK so far and that the client can continue with the request.

- **Success messages** (`2xx`): These ones tell the client that the request was acknowledged and successfully processed.

- **Redirection messages** (`3xx`): These messages imply that further action must be taken to complete the request. Usually, they indicate that a different URL must be used to access the resource.

- **Client-error messages** (`4xx`): They are used to inform the client there was a problem with their request. The problem could be an invalid URL, a missing field or wrongly formatted data.

- **Server-error messages** (`5xx`): They show that the server failed to process the request.


---

## Practice

What is the first digit of the status code for a **successfully processed request**?

???

- `2`
- `1`
- `5`
- `3`
- `4`


---

## Revision

If the client gets a `5xx` status code, it means that

???

- the server failed to process the request
- the request was processed successfully
- the requested resource can be found at another address
- everything is OK so far
