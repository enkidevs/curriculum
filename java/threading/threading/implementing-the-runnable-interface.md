---
author: nickdaminov
type: normal
category: how-to
links:
  - >-
    [More on Runnable
    Interface](https://docs.oracle.com/javase/7/docs/api/java/lang/Runnable.html){website}
  - >-
    [More on the Thread
    Class](https://docs.oracle.com/javase/7/docs/api/java/lang/Thread.html){website}
  - >-
    [More on Overriding
    `.start()`](http://www.javamadesoeasy.com/2015/03/what-will-happen-if-we-override-start.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Implementing the Runnable Interface


---

## Content

One way of creating a thread is to implement a `Runnable` interface which implies that you have to implement `public void run()` function. As we are implementing an interface, we create a `runnable` object and not a `thread` itself. Meaning that the `counter` object in the following example is not a `thread` and doesn't implement a `start()`. We can call `run()` explicitly on two or more instances of the `CustomRunnable` class but then they will not be concurrent and will run in order specified.

The most simple example would be:

```java
public class CustomRunnable implements
                              Runnable{
  //we have to implement `run()` function
  public void run() {
    for (int i = 0; i < 5; i++) {
      System.out.println("thread is
                   running : " + i);
    }
    System.out.println("Finished");
  }
}

```

In order to create a thread out of a runnable object we must pass it to the instance of the `Thread` object so that we can `start()` our `run()` contents concurrently. Of course it is possible to `@Override` the `start()` function inside our `CustomRunnable` class but then all the magic of concurrency will disappear as it will do exactly what is stated in the `start()` method so this should not be done.

Then in the `main` function:

```java
public class Main {
  public static void main(String[] args) {
    //Initialize the runnable
    //for `Thread` to run
    CustomRunnable counter =
                new CustomRunnable();

    //here we pass our new Runnable object
    //to the `Thread` class
    new Thread(counter).start();
    new Thread(new CustomRunnable())
                           .start();
  }
}
```

**NOTE:** it makes no difference whether we start new threads inline or declare them beforehand.

The output of the above program is always different as concurrency is in most cases implemented by the operating system. One example could be like this:

```plain-text
thread is running : 0
thread is running : 0
thread is running : 1
thread is running : 1
thread is running : 2
thread is running : 2
thread is running : 3
thread is running : 4
thread is running : 3
Finished!
thread is running : 4
Finished!
```


---

## Practice

What function holds the functionality of a thread?

???

What function ensures concurrent workflow of a thread?

???

Is an instance of a runnable class considered to be a thread?

???

Should a runnable object be passed to an instance of a `Thread` class?

???

What is the best practice for `Overriding` the `start()` function?

???

- `run()`
- `start()`
- No
- Yes
- Not overriding it at all
- Override it with the intended functionality of a thread
- It does not matter
- `create()`


---

## Revision

When implementing a `runnable` interface do we create a thread?

???

- No, we create a runnable object that has to be passed to an instance of a Thread
- `Yes, we can call start() on it straight away as it is a runnable thread.`
