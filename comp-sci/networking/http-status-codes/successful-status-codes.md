---
author: SebaRaba
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Successful status codes


---

## Content

**Successful status codes** start with the digit `2`. They inform the client that the server has received and accepted a request. Moreover, in case of a `200` **OK** status code, the result of the request will be delivered as the payload of the response.

Data returned depends of the method used for the request:

- `GET` - resource requested is sent to the client
- `HEAD` - the same header as for the `GET` request is returned
- `POST` - entity describing or containing the result is returned
- `TRACE` - the same message as received by the server is sent back

Not all `2xx` codes, however, mean that the request has been completed. For example, the `202` **Accepted** message states that the request has been queued for processing or is still processing. Even though not mandatory, the response should contain an indication of when the user can expect the request to be completed.

Other status codes indicating the **success** of a request are:

- `204` **No Content**: successful, but no message body in the response
- `205` **Reset Content**: tells the user agent[1] to refresh the page from which the request originated
- `206` **Partial Content**: indicates the response is only partial


---

## Practice

A `200` response to a `GET` request contains ??? as payload.

- the resource requested
- the new entity created
- the HTTP version
- the same initial headers


---

## Revision

What is the format of status codes indicating the **success** of a request?

???

- `2xx`
- `1xx`
- `3xx`


---

## Footnotes

[1:User Agents]
Applications that are acting on behalf of the user. One category of user agents includes web browsers.

A user agent sends information to the server about the web browser, operating system and device (whether the desktop or mobile version of the website should be fetched).
