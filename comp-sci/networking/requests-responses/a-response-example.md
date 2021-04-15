---
author: SebaRaba
type: normal
category: must-know
links:
  - >-
    [www.tutorialspoint.com](https://www.tutorialspoint.com/http/http_responses.htm){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# A Response Example


---

## Content

Assuming that the dummy password is correct, the server's response to the previous login request looks like this:

```plain-text
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

[Body - 4117 bytes long]
```

As you probably noticed, the request was successful, its **header** containing:

1. On the status line you can find the protocol version, `HTTP/1.1`, the status code, `200`, and the code description, `OK`.
2. The `*` in the `Access-Control-Allow-Origin` states that the request could be sent from any domain and the server would still respond.
3. The `Content-Encoding` header contains one of the accepted encodings, specified by the request (`gzip`).
4. Next, `Content-Type` specifies how the payload of the request is formatted. In this case, it has `JSON` format, with `utf-8` character encoding.
5. The `Date` field contains the moment in time when the response was generated.
6. The `ETag` field contains the identifier for the cached object. In our case, a successful login should return the user object.
7. You can see the server type (`nginx`) and its version (`1.10.1`) under the `Server` header.
8. `Content-Length` specifies the number of bytes in the response's payload. For uncompressed data, this usually corresponds to the number of characters, as long as they're all in the ASCII range. Because the whole user object is returned, the data is not negligible in this example.
9. The `Connection` field says that neither the server nor the client should close the connection.

In addition, the **payload** or **message body** can also present in this response. In this scenario, a `JSON` object was returned by the *server*, containing various user information.


---

## Practice

Which of the following **HTTP response** header fields contains a identifier used for cached resources?

???

- `ETag`
- `Content-Encoding`
- `Tag`
- `*`
- `Cache-Version`
- `Cached-Version`


---

## Revision

Which of the following **HTTP response** header fields specifies the format of the payload?

???

- `Content-Type`
- `Content-Encoding`
- `Content-Length`
- `Content-Format`
