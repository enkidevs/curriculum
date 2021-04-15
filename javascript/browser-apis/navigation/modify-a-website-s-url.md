---
author: rosielowther
type: normal
category: feature
links:
  - >-
    [css-tricks.com](https://css-tricks.com/using-the-html5-history-api/hello){website}
  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/API/History_API#The_pushState()_method){website}
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

# Modify a website's URL


---

## Content

The HTML5 History API enables developers to alter a website's URL without a full page refresh. This allows the URL to be more relevant to the content on the page if it has been loaded dynamically. This is also useful if the user wants to share the URL.

The format is:

```plain-text
history.pushState([data], [title], [url]);
```

`data` is a JavaScript object which is associated with the new browser history entry. This is needed if the state of the webpage changes.

`title` is intended to be a short title for the state to which you're moving (but is actually ignored by most browsers!).

`url` is the altered URL that should appear in the address bar. It must have the same origin as the current URL.


---

## Practice

What are the three parameters required with the `pushState` method (in order) when modifying a website's URL?

```javascript
history.pushState(
  [???],
  [???],
  [???]
)
```

- `data`
- `title`
- `url`
- `info`
- `string`
- `copy`
- `link`
- `head`
- `body`


---

## Revision

What method is used to modify a website URL without a full page refresh?

```javascript
history.???(
  [data],
  [title],
  [url]
);
```

- `pushState`
- `modURL`
- `changeRoute`
- `push`
 
