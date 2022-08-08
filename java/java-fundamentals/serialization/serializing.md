---
author: nickdaminov
type: normal
category: how-to
links:
  - >-
    [More on
    Serialization](https://www.tutorialspoint.com/java/java_serialization.htm){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Serializing


---

## Content

> 💡 Whenever an object is serialized to a file, conventionally this file is given a `.ser` extension although it can be any other type of file such as `.txt`.

In order for the object to be serializable two conditions must be held:

- It has to implement `java.io.Serializable` interface
- An object's fields must be serializable, otherwise they must be marked as `transient`[1]

For example, let's say we want to store a copy of `Car` object on a local machine:

```java
import java.io.*;
public class carSerialization {
  public static void main(String [] args) {
    Car bmw = new Car();
    bmw.model = "BMW 840Ci";
    bmw.engine = "4.0L M60 V8";
    bmw.topSpeed = 320;

    try {
      //open an output file
      FileOutputStream fileOut =
       new FileOutputStream("/bmw.ser");
      //make this file suitable to write
      //an object to
      ObjectOutputStream out =
       new ObjectOutputStream(fileOut);
      //write the object to the file
      out.writeObject(bmw);
      out.close();
      fileOut.close();
    }catch(IOException ex) {
      ex.printStackTrace();
    }
  }
}
```

It is important to use `try` and `catch` blocks as in this case we might get a fault upon loading the `bmw.ser` file.

**Advanced Section:**
In order to use serialization with generics both of the generic types should be serializable:

```java
class Pair<L extends Serializable,
           R extends Serializable>
           implements Serializable
```


---

## Practice

Consider the following:

```java
class Engine { //not serializable
    private int numberOfCilinders;
    private int volumeInLitres;
    private String model;
    ...
}

class Car implements Serializable {
    private String model;
    private Engine engine;
    private int topSpeed;
    ...
}
```

Is class `Car` serializable and if not why?

???

What could be done to Car in order to avoid the above problem?

???

- No, Car has a non serializable field
- Engine should be marked as transient
- Yes, Car is serializable
- No, Car doesn't implement the necessary interface
- No, Car doesn't inherit form a serializable class
- Engine should be marked as public
- Car should implement clonable interface


---

## Revision

What interface should a class implement in order to be serializable?

???

How should a non serializable field be marked in order for the class to be serializable?

???

What is the conventional extension of a file that the information about the class is stored in?

???

- serializable
- `transient`
- `.ser`
- clonable
- `.txt`
- `public`


---

## Footnotes

[1:`transient`]
We mark fields with `transient` if this field will not be serialized and the information about this field will not be transferred. The motivation for this may be that this particular piece of information is redundant for the receiver or is too risky to transfer (i.e. passwords or other private data).
