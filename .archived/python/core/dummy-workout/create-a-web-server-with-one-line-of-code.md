---
author: Ricardo

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - ' python-2.7 networking'

links:

  - >-
    [docs.python.org](https://docs.python.org/2/library/simplehttpserver.html){website}

---
# Create a web server with one line of code

---
## Content

The Python 2.X standard library ships with the very useful `SimpleHTTPServer` module.

Create a simple server which serves files from the current directory by running following command in a terminal:
```python
python -m SimpleHTTPServer 8080
``` 
The _8080_ argument refers to the port number of the server. 

Access the local server in a browser by entering the following URL:

``` 
localhost:8080
```