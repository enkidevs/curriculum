---
author: Stefan-Stojanovic

tags:
  - must-know

type: normal

category: must-know

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
  
---

# Creating Threads

---

## Content

To use threads we can import the standard built-in python `threading` module.

```python
import threading
```

To create a new thread, we will instantiate it with a function.

```python
# Some Function
def someFunction():
   for x in range(5):
      print("I am a thread!!!")

# First Thread
firstThread = 
  threading.Thread(
    target=someFunction
  )
```

After creating it, we need to start it using the built-in `start()` method:
```python
firstThread.start()
```

Which gives us this output:
```plain-text
I am a thread!!!

I am a thread!!!
I am a thread!!!
I am a thread!!!
I am a thread!!!
```

We can use some built-in methods to see how many threads we have or if there're any that are still active:

```python
# Check number of threads
threading.active_count()

# This gives the output
2
```

```python
# Check current thread
threading.current_thread()

# This gives the output
<_MainThread(MainThread, started 3828)>
```

Although we have only created a single thread, there are two of them.

The reason behind this is that the first `MainThread` was created when we launched the interpreter.

---

## Revision

Using the `threading` module, create and start a thread with the provided function.

```python
# Some Function
def f():
   for x in range(3):
      print("I am a thread!!!")

# Thread
myThread = 
  ???.???(
    ???=f
  )

myThread.???
```

- threading
- Thread
- target
- start()
