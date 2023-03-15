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

# Threading With .join() Continued

---

## Content

Previously, we did this[1] and got this result:

```python
Greetings friend
Third Message

# Then 5 seconds later we get this:
Why are you ignoring me
```

Now let's do the same thing, but instead of only starting it, we'll also join it with the main thread.

```python
import time, threading

def someFunction():
  # Print a message
  print("Greetings friend")
  # Wait time in seconds
  time.sleep(5)
  # Print a message
  print("Why are you ignoring me?")

# Thread
thread1 = threading.Thread(target=someFunction)

# Start thread
thread1.start()
# Join thread
thread1.join()

# Outside of the function we will also print a message
print("Third Message")
```

This time, the output looks like this:
```python
Greetings friend

# 5 sec wait time here then:

Why are you ignoring me
Third Message
```

As you can see, when we join the thread with the main one, the main one waits until the joined thread has executed.

This feature allows you to control when the main thread should wait. Essentially, you can create multiple threads and until all of those threads have executed, the main thread will just wait.

---

## Practice

Complete the missing code to initiate a thread on the `s()` function. Don't forget to join it.

```python
import threading, time

def x():
  # Print a message
  print("Hello!")

  # Wait time in seconds
  time.sleep(5)
  
  # Print a message
  print("Why are you ignoring me?")

myThread = 
  ???.???(
    ???=???
  )
print("I'm not!")

thread1.start()
thread1.???
```

- threading
- Thread
- target
- s
- join()
- Join()

---

## Revision

Complete the missing code to initiate a thread on the `x()` function. Don't forget to join and start it.

```python
import threading, time

def x():
  # Print a message
  print("Hello")

  # Wait time in seconds
  time.sleep(4)
    
  print("I'm angry!")
  # Print a message

myThread = 
  ???.???(
    ???=???
  )
print("Why are you angry?")

myThread.???
myThread.???
```

- threading
- Thread
- target
- x
- start()
- join()
- start
- join
- thread
---

## Footnotes

[1: Previous Insight]

```python
import threading, time

def someFunction():
  # Print a message
  print("Greetings friend")

  # Wait time in seconds
  time.sleep(10)
  
  # Print a message
  print("Why are you ignoring me")


# Outside of the function we will also print a message
print("Third Message")
```

Output:
```plain-text
Third Message
```

Then we added:
```python
thread1.start()
# -----> HERE <------
print("Third Message")
```

When we ran this code we got this:
```python
Greetings friend
Third Message

# Then 5 seconds later we got this:
Why are you ignoring me
```
