---
author: kapnobatai136

levels:

  - basic
  
  - medium
  
aspects:

  - workout

  - deep

type: normal

category: how to

links:

---

# Value types and the initial state

---
## Content

Let's start this insight by taking a look at an example:

```jsx
function Enki() {
  const [user, setUser] = useState(null)

  getProfile = () => {
    fetch('/api/profile').then(data => {
      setUser(data);
    });
  }

  return(
    <div>
      <p>User name:</p>
      <p>{user.name}</p>
    </div>
  );
}
```

---
## Practice

This question will be shown with the insight, and users will have just read the content.
It's best to use a code example here.

example:
Given this directory structure, change directories **from** `www/css` **to** `www/images/promo`:
```
- www
  - css
  - images
    - promo
  - js

```

`cd ???/???/???`

* ..
* images
* promo
* www
* js
* .
* ^

---
## Revision

Revision questions are shown without the insight, and users may never have seen the content. Use a code example or multiple choice question.

???

* right answer
* wrong answer
* wrong answer 2
