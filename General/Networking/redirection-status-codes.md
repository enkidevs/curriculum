# Redirection status codes
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - 'https://www.tutorialspoint.com/http/http_status_codes.htm'

---
## Content

The redirection status codes are used to tell that the client must take additional actions in order to fulfil the request.

If the method in the request is either `GET` or `HEAD`, the action required **may** be carried by the client, but with no interaction with the user.

The format for the redirection status codes is `3xx`.


For example the, `300` **Multiple Choices** status code will present in the response a list with links that the user can select from and go to that location. There is a limitation to this type of message as it can hold a maximum of 5 links.
-**

The `301` **Moved Permanently** specifies a new permanent *URI* for the requested resource.

This new *URI* is specified in the `Location` field of the response .

An automatic re-direction shouldn't happen if if the request method is one other than `GET` or `HEAD`.

-**

The `304` **Not Modified** indicates that the resource hasn't been modified and the client can use its cached version.

Other useful redirect status codes include:
- `302` **Found** returning a temporary new URI
- `303` **See Other** telling that the page can be found under a different URI
- `306` **Unused**  indicating the resource was used in a previous version, and is now reserved

---
## Practice

Which redirection status code indicates that the resorce hasn't been modified
??? ?

* `304`
* `303`
* `306`

---
## Revision

What is the format for redirection status codes
??? ?

* `3xx`
* `2xx`
* `4xx`
