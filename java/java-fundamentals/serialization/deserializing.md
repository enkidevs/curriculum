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

# Deserializing


---

## Content

Following from the previous insight, lets now deserialize our Car object:

```java
import java.io.*;
public class carDeserialization {
  public static void main(String [] args) {
    //create an empty object
    Car bmw = null;
    try {
      //open an output file
       FileInputStream fileIn =
        new FileInputStream("/bmw.ser");
      //make this file suitable to read
      //as an input stream
       ObjectInputStream in =
        new ObjectInputStream(fileIn);
      //deserialize the file and
      //fill `bmw` with information
       bmw = (Car) in.readObject();
       in.close();
       fileIn.close();
    }catch(IOException exi) {
       exi.printStackTrace();
       return;
    }catch(ClassNotFoundException exc) {
       System.out.println("Car class
                           not found");
       exc.printStackTrace();
    }
  }
}
```

Now we have `bmw` object storing all the information from the `bmw.ser`
So `bmw.model` is `"BMW 840Ci"` and `bmw.topSpeed` is 320.

It is especially important to use `try` and `catch` blocks when deserializing an object as we

- Might fail upon loading `bmw.ser` file
- JVM might not find byte code for the `Car` class

**NOTE:**

- `in.readObject()` was casted to `Car`
- If the object had a `transient` field then upon deserialization, the new field will be assigned with default values such as: `null` for an *object*, `0` for an *int*, `false` for a *Boolean*, etc.


---

## Practice

Consider the following:

```java
class Engine {
    private int numberOfCilinders;
    private int volumeInLitres;
    private String model;
    ...
}

class Car implements Serializable {
    private String model;
    transient private Engine engine;
    private int topSpeed;
    ...
}
```

Suppose we receive a `.ser` file which stores information about some `Car` object. What will be the result value of `engine` field in our deserialized object?

???

- It will be null
- Deserialing an object with transient filed will cause a program termination
- It will be a random address value


---

## Revision

What is the correct order of deserializing a file?

1. ???

2. ???

3. ???

- create an empty object
- open a suitable to read as an input stream file
- deserialize the file (i.e. fill our empty object with information)
