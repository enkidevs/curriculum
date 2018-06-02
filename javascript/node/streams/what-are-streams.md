---
author: tommarshall
levels:
  - beginner
  - basic
  - medium
  - advanced
type: normal
category: must-know
standards:
  javascript.read-and-write-streams.0: 20
  javascript.node-standard-library-os.0: 20
  javascript.events-asynchronous-operations.1: 20
tags: []
links:
  - '[Node Streams](https://maxogden.com/node-streams.html){website}'
parent: handling-event-errors
aspects:
  - introduction
  - workout
---

# What are Streams?


---

## Content

Streams are unix pipes[1] allowing data to be read from a source and for data to be piped to a destination. A stream is effectively an `EventEmitter` with implementation of some special methods.

These special methods define whether a stream is Readable, Writable, or Duplex (readable and writable). Readable streams allow for data to be read from a source and writable streams allow for data to be written to a destination.

An example use of a Node stream is in a Node based HTTP server, `request` would be a readable stream, and `response` a writable stream. The filesystem, `fs`, module allows readable and writable streams to be implemented.


---

## Practice

A stream can be Readable, Writable and ???.

Streams allow data to ??? and ???.

* Duplex
* read from a source
* piped to a destination
* Double
* WritableReadable
* processed in chunks
* processed in one go
* read into `fs` module
* used by the `request` module


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

