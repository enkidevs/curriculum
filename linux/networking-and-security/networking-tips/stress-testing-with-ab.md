---
author: tuwidc
type: normal
category: how-to
tags:
  - apache2
  - benchmark
  - webservers
  - terminal
  - ab
  - apachebench
notes: ''
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Stress testing with `ab`


---

## Content

ApacheBench (or `ab` tool) is a tool for benchmarking and regression testing of web servers.

The simplest test you can do is to perform 1000 requests, 10 at a time (which approximately simulates 10 concurrent users getting 100 pages each - over the length of the test).

```bash
ab -n 1000 -c 10 -k \
  -H "Accept-Encoding: gzip, deflate" \
  http://www.example.com/
```

`-n` 1000 is the number of requests.

`-c 10` tells `ab` to do 10 requests at a time, instead of 1 request at a time, to better simulate concurrent visitors (vs. sequential visitors).

`-k` sends the `KeepAlive` header, which asks the web server to reuse connections.

`-H` appends an extra header to the request. The argument should be a valid header line.


---

## Revision

A tool for testing how many connections your server is capable of serving is ???.

- `ab`
- `netstat`
- `w`
- `ss`
