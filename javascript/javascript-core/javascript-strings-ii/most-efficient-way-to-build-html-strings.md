---
author: pawel
type: normal
category: best-practice
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Most Efficient Way to Build `HTML` Strings


---

## Content

On modern browsers, building **HTML** strings with `.join()` is less efficient than concatenating strings with the `+` operator. This is due to the fact that the plus operator is optimized internally by modern JavaScript engines.

So, adding the values to an array and then joining them at the end:

```javascript
let html = [];
for (let i = 0; i < 100; i++) {
  html.push('<p>', i, '</p>');
}
html = html.join('');
```

Runs slower than the straightforward method of building `HTML` strings using `+=`:

```javascript
let html = '';
for(let i = 0; i < 100; i++) {
  html += '<p>' + i + '</p>'
}
```


---

## Practice

Fill in the gaps of the following snippet such that the `squares` string will contain, one after the other, the square value of all numbers from `1` to `10`:

```javascript
let squares = '';
for (let i = 1; i ??? 10; i++) {
  squares ??? i*i ??? ' ';
};
console.log(squares);
// "1 4 9 16 25 36 49 64 81 100 "
```

- `<=`
- `+=`
- `+`
- `=+`
- `<`
- `>`
- `++`
- `join`
- `concat`
- `/`
- `%`


---

## Revision

What's the more efficient way to build `HTML` strings in modern browsers?

```bash
1) + (plus operator)
2) join()
3) concat()
```

???

- 1
- 2
- 3
 
