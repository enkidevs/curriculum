# A HTTP request
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - 'https://www.quora.com/What-does-an-HTTP-request-looks-like'

---
## Content

**This is how a request should look like:**

`GET / HTTP/1.1
Host: erbosoft .com
Connection: keep-alive
Cache-Control: max-age=0
Accept: text/html,image/webp,*/*;q=0.8
User-Agent: Mozilla/5.0 (X11; Linux x86_64)
Accept-Encoding: gzip,deflate,sdch
Accept-Language: en-US,en;q=0.8
If-Modified-Since: Tue, 07 Feb 2012 04:44:06 GMT`

- the first line tells us that we make a `GET` request to the root (\);
- the **Host** line tells if ask for a specific host; Here we are looking for erbosoft.com;
- the **Connection: keep-alive** notifies the server that the connection shouldn't be closed after the current *request* has received a *response*;
- the **Accept** field tells the server what type of files is the requesting browser looking for; Here we are looking for text files and images; Depending on what the browser accepts we can have **Accept-Encoding** which defines the way the size of the content can be reduced; **Accept-Language** states the language supported by the browser.
- the **User-Agent** identifies the browser; Here we used Mozzila.
- the **If-Modified-Since** counts for efficiency; Basically the browser tells the server, the last time you gave me the response was `Tue, 07 Feb 2012 04:44:06 GMT` if nothing has changed since then, tell me so instead of sending me the whole response again.

---
## Practice

??? indicates the type of files accepted by the browser.

* Accept
* GET
* Accept-Encoding

---
## Revision

??? identifies the browser.

* User-Agent
* If-Modified-Since
* keep-alive
