# Benchmarking your applications
author: luke

levels:

  - basic

  - medium

type: normal

category: how to

links:

  - '[The output of time explained](https://stackoverflow.com/questions/556405/what-do-real-user-and-sys-mean-in-the-output-of-time1)'

---
## Content

A simple way to benchmark applications is to use the `time` utility. Using
`time` provides you with a breakdown of the running time of an application,
given as the wall time[1], the time spent in user and system (kernel) modes and
the total time. The total time is the most useful metric as this is the time
spent under computation in both user and kernel mode.

The `time` utility runs via the terminal and accepts a command as an argument;
usually you will give your application, along with any parameter. An example is
shown below where `count.js` is run using `node`.

```sh
&> time node count.js
node count.js  0.05s user 0.01s system 93% cpu 0.073 total
```

The `time` utility is available on OSX, Linux and most UNIX operating systems.
There are several alternatives that may be used on Windows including `timeit`
and `Measure-Command`.

---
## Practice

When using `time`, what measure is most useful?
???

* `total`
* `wall time`
* `system`

---
## Revision

Which utility can be used to benchmark your application?
???

* `time`
* `bench`
* `bm`

---
## Footnotes

[1:Wall time]
This is the total elapsed time, given by the clock *on the wall*. This includes
time spent on other processes but represents the real time surpassed before the
computation is complete.
