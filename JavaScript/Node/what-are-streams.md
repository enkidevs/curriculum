# What are Streams?
author: tommarshall

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

parent: handling-event-errors

links:
- '[Node Streams](https://maxogden.com/node-streams.html)'

---
## Content

Streams are unix pipes[1] allowing data to be read from a source and for data to be piped to a destination. A stream is effectively an `EventEmitter` with implementation of some special methods.

These special methods define whether a stream is Readable, Writable, or Duplex (readable and writable). Readable streams allow for data to be read from a source and writable streams allow for data to be written to a destination.

An example use of a Node stream is in a Node based HTTP server, `request` would be a readable stream, and `response` a writable stream. The filesystem, `fs`, module allows readable and writable streams to be implemented.


---
## Revision

Streams are ??? allowing data to be read from a source and for data to be piped to a destination.

* unix pipes
* transport methods
* modules

---
## Footnotes

[1:unix pipes]
A `pipe` is a form of redirection that is used in **Linux** and other **Unix**-like operating systems to send the *output* of one program to another program for further processing (as *input*).
