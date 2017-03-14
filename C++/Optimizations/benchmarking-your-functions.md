# Benchmarking your functions
author: luke

levels:

  - basic

  - medium

type: normal

category: how to

---
## Content

In some situations it may be undesirable to benchmark an entire application. If
you wish to benchmark a particular function, for example, it can be done by
logging an accurate timestamp before the function has been called and after it
has returned, then computing the difference.

The following code snippet will return the number of microseconds since the
UNIX epoch[1] and can be used for extremely accurate profiling.

```c
#include <sys/time.h>
typedef unsigned long long timestamp_t;

static timestamp_t get_timestamp ()
{
  struct timeval now;
  gettimeofday (&now, NULL);
  return now.tv_usec + (timestamp_t) now.tv_sec * 1000000;
}

timestamp_t start = get_timestamp();
// Code to benchmark here
timestamp_t stop = get_timestamp();
double runtime = stop - start;
```

---
## Practice

In OSX, Linux and UNIX, what method is used to retrieve a `datetime`?
???

* `gettimeofday`
* `gettimestamp`
* `getdate`

---
## Revision

How is the runtime of a particular function computed?
???

* by comparing a timestamp taken before and after calling it
* using the `runtime` method with the function pointer as a parameter
* using the `time` utility and running the application

---
## Footnotes

[1:UNIX epoch]
The standard timestamp on UNIX-like operating systems is the UNIX epoch. This
is the time that has elapsed since the 1st of January 1970.
