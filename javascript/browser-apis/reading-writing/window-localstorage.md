---
author: tommarshall

levels:

  - basic

  - beginner

type: normal

category: must-know


links:

  - '[www.kirupa.com](http://www.kirupa.com/html5/storing_and_retrieving_an_array_from_local_storage.htm){website}'


---

# `Window.localStorage`

---
## Content

*`localStorage`* is a storage object used to store data in without an expiry date. A local storage object can be accessed to add (store), access, and remove data. Data stored in *`localStorage`* will remain there once the current browsing session ends and the browser has been closed.

To create an item in local storage, pass in the item key and the item value:
```javascript
localStorage.setItem('country', 'England');
``` 

Retrieving data from local storage:
```javascript
var localData =   
    localStorage.getItem("country");
console.log(localData); // prints 'England'
```
Removing an item and clearing all data from local storage:
```javascript
localStorage.removeItem('country');
localStorage.clear();
```
If more websites try to store data with the same key, the old values will be overwritten.

---
## Practice

Retrieve the data from local storage:

```javascript
var localData = ???
               .???("data");
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

 
