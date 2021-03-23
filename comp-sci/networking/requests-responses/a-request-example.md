---
author: SebaRaba
type: normal
category: must-know
links:
  - >-
    [What is an "HTTP
    request"?](https://www.quora.com/What-is-an-HTTP-request){website}
  - >-
    [History of the Browser User-Agent
    String](http://webaim.org/blog/user-agent-string-history/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# A Request Example


---

## Content

The following is an example of a `POST` request, a consequence of pressing the **Sign in** button to log into our web application:

```plain-text
POST /api/auth/login HTTP/1.1
Host: enkipro.com
Connection: keep-alive
Referer: https://enkipro.com/
User-Agent: Mozilla/5.0 (X11; Linux x86_64)
  AppleWebKit/537.36 (KHTML, like Gecko)
  Chrome/57.0.2987.133 Safari/537.36
Accept: application/json, text/plain, */*
Accept-Encoding: gzip,deflate,sdch
Accept-Language: en-GB,en-US;q=0.8,en;q=0.6
Content-Type: application/json;
    charset=UTF-8
Content-Length: 62

{"mailOrUsername": "mihaiberq",
"password": "dummyPassword123"}
```

This is a line-by-line analysis of the request header:

1. The request line states that this is a `POST` request, which targets the relative path `/api/auth/login` on the server. The request makes use of the the `HTTP/1.1` standard.
2. The `Host` contains the server's address: `enkipro.com`.
3. The `Connection` field ensures that the connection won't be closed after the first request/response exchange (which speeds up the process by not having to reconnect for each new request).
4. On the next line, `Referer` indicates the page where the request originated from.
5. Details about the browser and the OS can be found under `User-Agent` field. We logged in from Chrome[1].
6. The `Accept` field specifies that any type of file will be accepted as a response (`*/*` - media type or MIME type).
7. `Accept-Encoding` states what types of encodings can be processed by the client.
8. Like the two other `Accept` fields, `Accept-Language` specifies that `en-GB, en-US` are preferred over the more general `en`[2].
9. `Content-Type` field tells the server the payload content's type and how to decode it.
10. Our last field in this example, `Content-length` represents the length, in octets (1 octet = 1 byte = 8 bits), of the message payload. A character requires one octet to be represented, making the value the actual length of the message.

The payload contains the data specified by the **client**. In this example, the login input fields are included, formatted as a *JSON* string. By reading the header, the server will be able to understand the payload and return an appropriate response.

Most modern browsers like **Microsoft Edge** (*F12*), **Mozilla Firefox** (*CTRL/CMD + Shift + J*) or **Chrome** (*CTRL/CMD + Shift + i*) provide a Developer Console accompanied by a *Network* tab where you can take a detailed look on all requests and responses made by your browser.


---

## Practice

The filetypes that the server should return are specified in the ??? header field.

- Accept
- User-Agent
- Accept-Encoding
- Content-Type


---

## Revision

Within an **HTTP request**, details about the browser are provided by which header field?

???

- `User-Agent`
- `Accept`
- `Referer`
- `Connection`


---

## Footnotes

[1: User-Agent]
It might seem strange that the first browser in the `User-Agent` field list is `Mozilla` and not `Chrome`.

[2: Relative quality factor]
If this is the first time you encounter the `q=0.8` notation, you should keep in mind that it is used to declare preference (it can take values between *0* and *1*). In this case, we prefer the more specific `en-GB, en-US` (British or American) English variants, rather than a more general English (`en`).

In case `q` isn't present, the option has a default value of `q=1`, equivalent to the most preferred.
