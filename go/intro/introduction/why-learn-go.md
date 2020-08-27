---
author: Stefan-Stojanovic

type: normal

category: how to

links:
  - '[The Tour of Go](https://tour.golang.org/welcome/1){website}'
  - '[The Go Proverbs](https://go-proverbs.github.io/){website}'

---

# Why Learn Go

---
## Content

The Go language is fun to write, quick to pick up, and fast to run.

### Ease of programming

Writing code in **Go** is easily readable and understandable by other **Go** programmers.

The standard library in Go aims to contain all the core tools needed to be productive.

The Go syntax is clear and relatively small in size[1]. 

This means that learning the basics of Go can be done pretty quickly.

> 💡 Fun fact: The creator of Go, Rob Pike, describes the language with a set of poetic proverbs[2].

### Efficiency

Go code [compiles](https://www.enki.com/glossary/general/compilation) insanely fast compared to its predecessor C.

> 💡 Even huge Go programs will compile in seconds.

Modern computers have many powerful features that old languages such as C are hard to adapt to.

Building programs that can efficiently take advantage of modern computers is a core part of Go.

> 💡 One way to think of Go is as a low-level language with high-level concepts[3].

---
## Practice

Go is a relatively small language compared to most others.

???

- True
- False

---
## Revision

Which of the following is a feature of Golang?

???

- Easy to learn and use
- Fast compilation
- Efficient use of hardware
- Consistent standard library
- All of the options

---
## Footnotes

[1: Go is a small language]
Every programming language has reserved words with a special meaning that are called **keywords*.

Go only has 25 keywords:

```plain-text
break        default      func         interface    select
case         defer        go           map          struct
chan         else         goto         package      switch
const        fallthrough  if           range        type
continue     for          import       return       var
```

For comparison, C has 32 and Java has 51 keywords.

[2: Go proverbs]
The Go Proverbs is a poetic approach to describe the essential principles of the language. 

Here are a few examples (don't worry about their meaning for now; you'll learn about them later on in the course):

- Don't communicate by sharing memory, share memory by communicating.
- Concurrency is not parallelism.
- The bigger the interface, the weaker the abstraction.
- Make the zero value useful.

[3: Low-level language]
A high-level programming language is one that aims to provide easy to use syntax that hides away the details of what the computer is doing.

This makes them easier to read and write but hard to make efficient because we have to translate them for the computer.

A low-level programming language is one that is "closer to the metal", and can run really fast but is hard to understand for a human.

Go aims to provide the best of both worlds.