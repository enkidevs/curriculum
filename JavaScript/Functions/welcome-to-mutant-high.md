# Welcome to Mutant High
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: tetris

category: tip

---
## Content

Is the function pure, or does it mutate?

A function is pure if it returns a new entity without modifying any existing data.

A function mutates if it modifies an existing entity, rather than returning a new one.

---
## Game Content

mutate:pure
```true
arr.length
Array.from(arr)
arr.concat([0])
arr.includes(0)
arr.join(',')
arr.slice(1)
arr.toString()
arr.indexOf(0)
arr.all(x => true)
arr.keys()
arr.map(x => 0)
arr.reduce((x, y) => y)
arr.slice()
Object.assign({b: 1}, obj)
Object.create(obj)
Object.is(obj, {})
obj.valueOf()
obj.toString()
Object.keys(obj)
obj.name
```false
arr[0] = 0
arr.push(0) 
arr.pop() 
arr.reverse() 
arr.shift()
arr.sort()
arr.copyWithin(0, 1)
arr.fill(0)
arr.splice(1)
arr.unshift()
delete arr[0]
Object.assign(obj, {b: 1})
Object.freeze(obj)
Object.seal(obj)
delete obj.name
obj.name = ''