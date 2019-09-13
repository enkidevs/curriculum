---
author: tommarshall

levels:

  - basic

  - beginner

type: normal

category: must-know

aspects:
  - introduction
  - workout
  - deep

standards:
  javascript.browser-store-data.1: 10

links:

  - '[www.kirupa.com](http://www.kirupa.com/html5/storing_and_retrieving_an_array_from_local_storage.htm){website}'
  - '[MDN Storage APIs](https://developer.mozilla.org/en-US/docs/Web/API/Storage/LocalStorage){documentation}'
  - '[Cookies vs localStorage](https://medium.com/datadriveninvestor/cookies-vs-local-storage-2f3732c7d977){website}'


---

# `Window.localStorage`

---
## Content

*`localStorage`* is a storage object used to store data in without an expiry date. A local storage object can be accessed to add (store), access, and remove data. Data stored in *`localStorage`* will remain there once the current browsing session ends and the browser has been closed.

To create an item in the current domain's local storage, pass in the item key and the item value:
```javascript
localStorage.setItem('country', 'England');
```

Retrieving data from local storage:
```javascript
var localData = localStorage.getItem(
  "country"
);
console.log(localData); // prints 'England'
```

To remove an item from the `localStorage` use the `.removeItem()` method, and as a value pass the item's key:

```js
localStorage.removeItem('country');
```

To remove all the items from the `localStorage`, you can use the `.clear()` method:
```javascript
localStorage.clear();
```

If you try to store data with the same key, the old values will be overwritten.

It is important to know that the data in `localStorage` is specific to the protocol of the page. What this basically means is that every webpage will have a different `localStorage`.

Now that you've learned what `localStorage` is, you might be wondering why you would use this instead of using cookies. Cookies are mainly used for reading server-side, while `localStore` can only be read by the client-side. With this said, you can view `localStorage` as an improvement on cookies, mainly because the available size for `localStorage` is 5MB while a cookie's maximum size is typically 4KB. Lastly, the data in `localStorage` is not sent back to the server for every HTTP request.

---
## Practice

Retrieve the data corresponding to the "Enki" key from local storage:

```javascript
var localData = ???.???(
  "Enki"
);
```


* `localStorage`
* `getItem`
* `local`
* `storage`
* `localStore`
* `Window.localStorage`
* `get`
* `item`

---
## Revision

Create a `localStorage` item with key `awesome` and value `enki`:
```javascript
???.???('awesome', 'enki');

```


* `localStorage`
* `setItem`
* `createItem`
* `removeItem`
* `clear`
* `getItem`
* `newItem`
 
