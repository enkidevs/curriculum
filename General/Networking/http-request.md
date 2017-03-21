# HTTP request
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - 'https://www.tutorialspoint.com/http/http_requests.htm'

---
## Content

Whenever a client fetches a file from a **web server** it is using `HTTP` protocol. `HTTP` is a *request*/*response* protocol, which means, first you computer sends a *request* which is followed by a *response* from the **server**.

**Request-Line**
`Request-Line = Method SP Request-URI SP HTTP-Version CRLF`

The request line begiens with a `method`, followed by the request `URI` and the `protocol` version and ends in `CRLF`. All it's parts are separated using SP characters.

`GET /dumprequest HTTP/1.1
Host: rve.org.uk
Connection: keep-alive
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (X11; Linux x86_64)
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8
Referer: https://www.google.co.uk/
Accept-Language: en-UK,en;`

This is a HTTP request with:

- `Request URI` /dumprequest, it specifies *documents* which should be retrieved;
- `Request Method` GET, the request Method is usually either `GET` or `POST`;
- `User-Agent` Mozilla/5.0 (X11; Linux x86_64) together with Accept and Accept-Language specify details about your web browser, what type of things your browser can accept and the language it accepts;
- `Refering page` specifies which documents refer you to the page;
- `Cookies` every time a server sends a response to your browser it has the opportunity to send a `cookie` as well, they are small bits of information which contain data your browser stores;
- `Connection control` keep-alive. 

---
## Practice

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2

---
## Revision

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2
