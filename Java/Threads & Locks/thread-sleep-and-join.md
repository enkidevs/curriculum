# Thread Sleep and Join
author: nickdaminov

levels:

  - medium

type: normal

category: feature

links:

- '[More on Sleep](https://docs.oracle.com/javase/tutorial/essential/concurrency/sleep.html§)'
- '[More on Joining](https://docs.oracle.com/javase/tutorial/essential/concurrency/join.html)'
-'[More on InterruptedException](https://docs.oracle.com/javase/7/docs/api/java/lang/InterruptedException.html)'

---
## Content

Sometimes you might want to put a thread to `sleep` (i.e. to wait for some time) or `join` it (i.e. wait until it terminates). This is a very basic concept but can have many uses.  

`sleep()` is implemented as a `static` method in the `Thread` class described earlier soit can be called directly on it or from any other custom thread from inside your program  
The example of using `.sleep()` would be:
```

public class SleepingThread {
  public static void main(String args[])
    throws InterruptedException {
    for (int i = 0; i < 5; i++) {
      //Pause for 4 seconds
      Thread.sleep(4000);
      //Print a number
      System.out.println(i);
    }
  }
}
```
On the other hand, `.join()` method is not static and is specific to every thread. The key point of this function is to wait until the thread finishes running and terminates. This can be useful when each of the running threads performs a calculation and then you want to combine the results in some way. In order to do that you must ensure that all the threads have finished their calculations otherwise it will result a wrong answer in the end.

A simple example would be the following:

```

//ALL THIS SHIT WAS COPYPASTED BUT ITS FUCKING AWESOME
class Add extends Thread {
	int value;

	public void run() {
		value = 1+2;
	}
}

class Mul extends Thread {
	int value;

	public void run() {
		value = 1*2;
	}
}

public class Main{
	public static void main(String[] args){
		Add t1 = new Add();
		Mul t2 = new Mul();

		t1.start();
		t2.start();

		try {
			t1.join();
			t2.join();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
    double n = ((double)t2.value/t1.value);

		System.out.println(n);		
	}
}
```

In this case `n` is calculated after we get the results form t1 an t2. If there was no joining module the result would not necessarily be 2/3.

The try/catch block is important as when we call `.join()` methods on our threads we are relying on the fact that they finish their execution. During this process they can be interrupted for some reason which will cause incorrectness of the end result.

---
## Practice

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2

---
## Revision

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2
