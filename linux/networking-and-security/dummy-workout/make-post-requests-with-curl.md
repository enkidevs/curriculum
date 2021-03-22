---
author: tuwidc

levels:

  - basic

  - advanced

  - medium

type: normal

category: how-to

notes: ''

---
# Make `POST` requests with `curl`

---
## Content

It is often important to test that the API we're writing or using work as expected. 

When dealing with POST requests, a common approach is to use dedicated third-party tools  with a UI, such as `postman`. 

But the quickest solution is often to use `curl`. This is as easy as setting a header and sending some data:

```
curl -H "Content-Type: application/json" \
    -X POST -d '{"key":"value"}' \
    http://localhost:3000/api/
```
 
 
 
