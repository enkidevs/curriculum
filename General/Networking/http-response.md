# HTTP response
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

After recieving and interpreting a request, the **server** sends a response to the **client**.
This responses have the following format:

`Response = Status-Line;
          *(( general-header ;
          | response-header ;
          | entity-header ) CRLF) ;
          CRLF
          [ message-body ] ;`


`Status-Line = HTTP-Version SP Status-Code SP Reason-Phrase CRLF`

The first line of the *response* is the **status line**.It contains the *protocol* version followed by the numeric **status codes**, no CRLF is allowed untill the end of the sequence.
- the **status code** is the 3 digit result code.
- the **response headers** allow information that can't be added in **status codes** to be sent in the response.

##Response headers
The response headers are fearly limited:
`| Accept-Ranges
| Age
| ETag              
| Location          
| Proxy-Authenticate
| Retry-After       
| Server            
| Vary              
| WWW-Authenticate`



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
