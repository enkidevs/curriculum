---
author: Stefan-Stojanovic

tags:
  - introduction

type: normal

category: must-know

practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Threading With join()

---

## Content

Previously, we created a thread using `someFunction`[1]:

```python
firstThread = 
  threading.Thread(
    target=someFunction
  )
```

Now, let's import the `time` module and use a different function to create one.

> Using the `time` module we can see how **threading** works by implementing the `time.sleep(NUM_OF_SECOND)` method.

```python
import threading, time

def someFunction():
  # Print a message
  print("Greetings friend")

  # Wait time in seconds
  time.sleep(5)
  
  # Print a message
  print("Why are you ignoring me")


# Outside of the function we will also print a message
print("Third Message")
```

If we run the above code, we would get this output:
```plain-text
Third Message
```

The reason we are creating a thread on a different function is to showcase what the `.join()` method does.

This method is used to join a thread with the main thread.

What this means is, when we join a thread, the main thread stops executing until the joined thread has finished.

Let's create it:
```python
thread1 = 
  threading.Thread(
    target=someFunction
  )
```

First, we will start the thread without `.join()`.

```python
thread1.start()
```

Add this code above the last print but outside of the function:
```python
# -----> HERE <------
print("Third Message")
```

When we run this code we get this:
```python
Greetings friend
Third Message

# Then 5 seconds later we get this:
Why are you ignoring me
```

> Let's continue in the next insight.


---

## Practice

Complete the missing code to initiate a thread on the `x()` function. Don't forget to start it.

```python
import threading, time

def x():
  # Print a message
  print("Hello")

  # Wait time in seconds (4)
  ???
  
  # Print a message
  print("Why are you ignoring me")

myThread = 
  ???.???(
    ???=???
  )

myThread.???
```

- time.sleep(4)
- threading
- Thread
- target
- x
- start()
- sleep.time(4000)

---

## Revision

Complete the missing code to initiate a thread on the `f()` function. Don't forget to start it.

```python
import threading, time

def f():
  # Print a message
  print("Hello")

  # Wait time 1 second
  ???.???(???)
  
  # Print a message
  print("Why are you ignoring me")

print("Heyyyy")

??? = 
  threading.???(
    ???=???
  )

myThread.???
```

- time
- sleep
- 1
- myThread
- Thread
- target
- f
- 1000

---

## Footnotes

[1: Some Function]

The function used to instantiate a thread in the previous insight:

```python
# Some Function
def someFunction():
   for x in range(5):
      print("I am a thread!!!")
```
