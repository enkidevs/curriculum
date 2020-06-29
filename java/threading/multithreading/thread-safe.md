---
author: catalin
type: tetris
category: tip
notes: >-
  Request an workout after playing the game?

  Like after this game is unlocked, but the user fails to master it, he might be
  able to request an workout on Threads and Locks for the next day.
---

# Thread safe?


---

## Content

Multi threading is a common practice and a necessity in nowadays applications (either large or small). Certain classes trade thread safety for performance boosts.

Can you guess which classes enforce safe use in multi threading and which are not to be used in this scenario?


---

## Game Content

thread safe:not safe

```false
Vector
%exp
The `Vector` class implements a growable array of objects, which is thread safe in Java.
%

ConcurrentLinkedQueue<E>
%exp
An unbounded concurrent deque based on linked nodes. Concurrent insertion, removal, and access operations execute safely across multiple threads.
%

HashTable
%exp
This class implements a hash table, which maps keys to values. Any non-null object can be used as a key or as a value. It is thread safe.
%

ConcurrentHashMap
%exp
A hash table supporting full concurrency of retrievals and adjustable expected concurrency for updates so it safe to run on
multiple threads.
%

Semaphore
%exp
`Semaphores` are used in java to restrict the number of threads that can access some physical or logical resources.
%

Stack
%exp
Stack class represents a last in, first out(LIFO) implementation of the vector class. As the Vector class is safe, to run on multiple threads the same is Stack.
%

Dictionary
%exp
Dictionary is an abstract class parent of interfaces such as HashMap, which maps keys to values. It is thread safe.
%

AtomicInteger
%exp
AtomicInteger represents a boolean value that may be updated automatically. It is thread safe.
%

AtomicLong
%exp
It represents a long value that might be updated automatically. It is thread safe.
%

AtomicBoolean
%exp
AtomicBoolean represents a boolean value that may be updated automatically. It is thread safe.
%

CopyOnWriteArrayList<E>
%exp
It is a thread-safe interface in which all mutative operations are implemented by creating a new copy of the underlying `ArrayList`. It is thread safe.
%
```

```true

HashMap
%exp
Hash table based implementation of the Map interface. This implementation provides all
of the optional map operations, and permits null values and the null key. It is not thread safe in Java.
%

SimpleDateFormat
%exp
SimpleDateFormat is a concrete class for formatting and parsing dates in a locale-sensitive manner.
It allows for formatting (date -> text), parsing (text -> date), and normalization.
It is not implemented in a thread safe manner.
%

ArrayList<>
%exp
Resizable-array implementation of the List interface. Implements all optional list operations, and permits all elements, including null. It isn't thread safe.
%

HashSet
%exp
This class implements the `Set` interface, backed by a hash table. It is not thread safe in **Java**.
%

DateFormat
%exp
`DateFormat` is a abstract class used for time/date formatting subclasses. It is not implemented in a thread safe way.
%

LinkedList
%exp
Doubly-linked list implementation of the List and Deque interfaces. Implements all optional list operations, and permits all elements (including null). It is not a thread safe class in `Java`.
%

FileOutputStream
%exp
`FileOutputStream` is used to write data to a File or FileDescriptor. The output stream could mutate so it is not thread safe.
%

Calendar
%exp
The `Calendar` class is an abstract class that provides methods for converting between a specific instant in time and a set of calendar fields. None of the instance methods are synchronized so it is not thread safe.
%

Integer
%exp
`Integer`s are not thread safe in `Java`.
%

Long
%exp
`Long` data types are not thread safe.
%

Boolean
%exp
`Boolean` is not thread safe in `Java`.
%

```
