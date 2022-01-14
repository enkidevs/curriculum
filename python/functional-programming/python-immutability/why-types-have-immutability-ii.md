---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [Python Reference: Data
    Model](https://docs.python.org/3/reference/datamodel.html){website}
  - >-
    [Blog post: Objects Should be
    Immutable](http://www.yegor256.com/2014/06/09/objects-should-be-immutable.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Prevention of Side Effects


---

## Content

Side effects are unintended consequences of calling some function which the programmer is unaware of and can therefore cause undefined behaviour. In all but the most pure functional programming side-effects are unavoidable; the key is to ensure they are controlled and minimised.

Immutable objects help with this as they automatically rule out a whole class of side effects which take place after an object's creation. Unlike with mutable objects, nothing can change an immutable object after creation and therefore it is impossible to encounter bugs caused by a function changing an object the programmer did not intend to as part of its routine.

In the next insight we will consider avoiding identity mutation and atomicity of failure.


---

## Practice

What is the code snippet below an example of?

```python
class Connection(object):
  ...
  def post(self):
    self.method = "POST"
      # ^ mutates the Connection object
    self.httpconnection.request(self.method, "/")
    self.result = self.httpconnection.getresponse()
    conn.result.read()
    return self.result
```

???

- Side effects
- Temporal coupling
- Atomicity of failure
- Identity mutation
 
