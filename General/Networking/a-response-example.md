# A response example
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - 'https://www.w3.org/Protocols/rfc2616/rfc2616-sec6.html#sec6.2'

---
## Content

Following the previous log in request, this is the server's response (assuming the dummy password is correct):
```text
HTTP/1.1 200 OK
Access-Control-Allow-Origin: *
Content-Encoding: gzip
Content-Type: application/json;
    charset=utf-8
Date: Wed, 12 Apr 2017 11:15:19 GMT
ETag: W/"300b-RLrUiyK+3SDC/cewolg"
Server: nginx/1.10.1
Content-Length: 4117
Connection: keep-alive

[Body - 4117 characters long]
```

As you probably noticed, the request was successful:
1. On the status line you can find the protocol version, `HTTP/1.1`, the status code, `200`, and the code description, `OK`.
2. The `*` in the `Access-Control-Allow-Origin` states that the request could be sent from any domain and the server would still respond.
3. The `Content-Encoding` header contains one of the accepted encodings specified by the request (`gzip`).
4. Next, `Content-Type` specifies how the payload of the request is formated. In this case, it has `JSON` format, with `utf-8` character encoding.
5. The `Date` field contains the moment in time when the response was generated.
6. `ETag` field contains the identifier for the cached object. In our case, a successful log in should return the user object.
7. You can see the server type (`nginx`) and its version (`1.10.1`) under the `Server` header.
8. As you may already figured out, the `Content-Length` represents the number of characters in the response's payload. Because the whole user object is returned, the data is not negligible.
9. The `Connection` field says that neither the server nor the client should close the connection.

If you have ever wondered how exactly a website knows that *you* are the one making the request, the answer is simple. Usually, inside the `200` response, the server includes an authentication token (a very long string) that the client stores.

Any request the client makes after the successful log in, will contain a header containing the token. There are multiple token system implementations around, so the actual header content depends on the server's choice.

---
## Practice

In case the log in was not successful, the payload contained

???

* the error message
* the user object
* the auth token
* nothing

---
## Revision

In case of a successful log in response, what is the payload most likely to contain?

???

* auth token
* nothing
* error message
* user's email and password
