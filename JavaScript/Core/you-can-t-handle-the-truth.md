# You can't handle the truth!
author: Bruno

levels:

  - basic

  - advanced

  - medium

type: tetris

category: must-know

tags:

  - gamified

---
## Content

A value `v` is called *truthy* if it converts to `true` when used in an `if` clause. 

This mean that 
```
if (v) { console.log('yes'); }
``` 
will print `yes` if and only if `v` is truthy.

---
## Game Content

Falsy:Truthy
```true
true
```
```true
new Date()
```
```true
Infinity
```
```true
{}
```
```true
[]
```
```true
3
```
```true
-1
```
```true
new Number(0)
```
```true
7
```
```true
[1][0]
```
```true
{a: false}
```
```false
false
```
```false
0
```
```false
''
```
```false
""
```
```false
null
```
```false
NaN
```
```false
undefined
```
```false
{}.someKey
```
```false
[].length
```
```false
[1][1]
```