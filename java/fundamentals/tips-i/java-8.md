---
author: catalin

levels:

  - basic

  - advanced

  - medium

  - beginner

type: tetris

category: tip

aspects:

  - introduction

  - new

---

# Java 8?

---
## Content

With the introduction of Java 8, numerous classes and interfaces have been added to the languages so as to help users program easier and in a more efficient fashion.

---
## Game Content

not java 8: java 8
```false
NavigableMap
%exp
In **Java**, `NavigableMap` is an *interface* which enables 'Map' data structures to make use of methods that return the closest matches for given search targets. It was introduced in *Java 6*.
%
NavigableSet
%exp
Introduced in **Java 6** `NavigableSet` enables 'Set' data structures to make use of methods that return the closest matches for given search targets.
%
SortedSet
%exp
It's a `Set` that provides a **total ordering** on its elements. It was implemented in **Java 2**.
%
ThreadLocalRandom
%exp
It's a random number generator isolated to the current thread; integrated in **Java 7**.
%
Iterable
%exp
Implementing this **interface** allows an object to be used with `for-each loop` statement. It was first introduced in **Java 7**.
%
ThreadLocal
%exp
This class provides thread local variables. **Java 2** was the first version to have it implemented.
%
AutoCloseable
%exp
It defines an object that may hold resources until it is closed. It was implemented since **Java 7**.
%
BufferedReader
%exp
This class enables buffered reads from the disk, which will make use of the **RAM** memory to improve performance.

It was introduced with **Java 7**.
%
HttpURLConnection
%exp
It defines an **URLConnection** object  with support for **HTTP** specific features. It was introduced in **Java 1**
%
AtomicBoolean
%exp
This is the thread-safe version of the `Boolean` data type.

It was introduced in **Java 5**.
%
ConcurrentHashMap
%exp
It's a **hash table** supporting full concurrency of retrievals and **adjustable** expected concurrency for updates. It was first introduced to **Java 5**.
%
ArrayList
%exp
This is a resizable array implementation of the **List** interface. It was introduced with **Java 2**.
%
AtomicInteger
%exp
This is the thread-safe variant of the `Integer` class.

It was introduced with **Java 5**.
%
Integer
%exp
The **Integer** class wraps a value of the primitive **type int** in an object. It exists since **Java 1**.
%
CopyOnWriteArrayList
%exp
A **thread-safe** variant of **ArrayList** in which all mutative operations (add, set, and so on) are implemented by making a fresh **copy** of the underlying **array**. It exists since **Java 5**.
%

```

```true
StampedLock
%exp
A **capability-based** lock with three modes for controlling **read/write** access. It was introduced with **Java 8**.
%
DoubleAdder
%exp
Introduced in **Java 8**; it represents one or more variables that together maintain an initially zero double sum.
%
LongAccumulator
%exp
It represents one or more **variables** that together maintain a running **long value** updated using a supplied function. It was introduced with **Java 8**.
%
CompletionException
%exp
**Exception** thrown when an error or another exception is encountered. **Java 8** introduced this class.
%
URLPermission
%exp
Introduced in **Java 8**, it represents permission to access a **resource** or **set of resources** defined by a given **URL**.
%
OptionalDouble
%exp
First implemented in **Java 8**; when used it defines an object that might hold a **double** value or might not.
%
StringJoiner
%exp
It's used to construct a sequence of **characters** separated by a **delimiter**. It was first implemented in **Java 8**.
%
SplittableRandom
%exp
`SplittableRandom' is a random number generator which can be used for isolated **parallel computations** that may generate **subtasks**. It was implemented in **Java 8**.
%
LongSummaryStatistics
%exp
It's a state object for collecting statistics such as **count**, **max**, **min**, **sum** and **average**. Introduced with **Java 8**.
%
Spliterator
%exp
This is a new special kind of **Iterator** that can traverse a **Collection**. It was introduced with **Java 8**.
%
PrimitiveIterator
%exp
This class represents a base type for primitive specializations of **Iterator**. Sepcialized subtypes are provided for: **int**, **long** and **double** values. It was introduced with **Java 8**.
%
UncheckedIOException
%exp
This class is used to wrap **IOExceptions** with an **unchecked exception**. **Java 8** introduced it.
%

```
