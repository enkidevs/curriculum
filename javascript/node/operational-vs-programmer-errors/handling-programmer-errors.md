---
author: mihaiberq
type: normal
category: how-to
tags:
  - introduction
  - workout
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Handling Programmer Errors


---

## Content

Programmer errors are *bugs*. Hence, they **can't and shouldn't** be handled. The only way to deal with them is to debug and fix the problem. If the error is expected, that makes it operational.

In production, if such an error is encountered while fulfilling a request, there are two workarounds until the next deploy: *recover* or *crash immediately*.

Recovering means allowing the operation to fail but continue handling requests. But this is a problem you hadn't considered, so there is no way to know if this will be an one time only or it will wreak havoc among the other connections. For example, a variable left `null` or `undefined` will cause following requests to blow up as well, a connection can be left in an authenticated state, also used for new connections or memory may leak.

Undoubtedly, the best response is to *crash and restart* the server. This is the fastest way to fully restore the service - or as much as possible, considering the bug - until the problem is fixed for good. Going straight for the cause instead of wasting time treating the symptoms will often reduce the number of times a server crashes.

Remember that programmer errors on the server become operational errors on the client. They are the ones that have to deal with servers crashes and network issues. Most of the times, even just logging the error message for the user to see is better than providing no feedback of what is happening.


---

## Practice

Can you identify what a successful system recovery implies?

???

- Allowing a request to fail and reverting the state changes
- Allowing a request to fail
- Restarting the system
- Fixing the programmer error
- Handling the programmer error properly


---

## Revision

Drawing an analogy between a disease and a server crashing, which of the following statements are equivalent?

```javascript
Cause
???

Symptoms
???

Treatment
???
```

- Programmer error
- Service outage
- Fixing the bug
- Handling the programmer error
- Operational error
- Enclosing the code inside a try/catch block
