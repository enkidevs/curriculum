---
author: lizTheDeveloper
type: normal
category: must-know
links:
  - >-
    [Deserialization of untrusted
    data](https://owasp.org/www-community/vulnerabilities/Deserialization_of_untrusted_data){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Identify Deserialization


---

## Content

Whenever input is consumed from untrusted sources (anything from the internet rather than a device you own), you can be sure that at some point, someone will try sending you just the right values to cause a problem in your application.

In order to review your code for deserialization vulnerability, begin with input validation.  Next, search for any places in the code where a branch of the code relies on a value from the input that is not properly normalized.

Imagine how simple it might be to exploit this code, were you able to edit the `request`'s' body:

```js
price = request.body['price']
if (request.body['admin']) {
  price = 0
}
db.insert(
  "orders",
  user=request.body["user_id"],
  price=price,
  items=request.body['cart']
)
```

The above code is vulnerable to both application logic tampering (the `admin` parameter can be modified, rendering the price 0!) and data tampering (if I know your user ID I can make orders on your behalf!)


---

## Practice

Given that you know this code is present on the server, place an order of item number 1, 2, and 3 for user ID `14`, and make their `price` `0`.

```js
price = request.body['price']
if (request.body['admin']) {
  price = 0
}
db.insert(
  "orders",
  user=request.body["user_id"],
  price=price,
  items=request.body['cart']
)
```

Response Body:

```js
{
  admin: "???",
  user_id: "???",
  items: "???"
}
```

- true
- 14
- 1,2,3
- false
- 16
- 1
- 2
- 3


---

## Revision

Given that you know this code is present on the server, place an order for yourself (you're user 212) of items 4, 5 and 6, and make your price 0.

Place an order for user 14 of item number 1, 2, and 3 but make them pay full price.

```js
price = request.body['price']
if (request.body['admin']) {
  price = 0
}
db.insert(
  model="orders",
  user=request.body["user_id"], 
  price=price,
  items=request.body['cart']
)
```

My Order:

```js
{
  admin: "???",
  user_id: "???",
  items: "???"
}
```

User 14's Order:

```js
{
  admin: "???",
  user_id: "???",
  items: "???"
}
```

- true
- 212
- 4,5,6
- false
- 14
- 1,2,3
- 16
- 1
- 2
- 3
