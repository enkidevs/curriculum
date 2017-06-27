# Serializing
author: nickdaminov

levels:

  - medium

type: normal

category: how to

links:

  - '[link to learn more](https://enki.com)'

---
## Content

**NOTE:** whenever an object is serialized to a file, conventionally this file is given a `.ser` extension although it can be any other type of file such as `.txt`.

In order for the object to be serializable two conditions must be held:
- It has to implement `java.io.Serializable` interface
- Fields of an objects must be serialazable, otherwise they must be marked as `transient`

For example, lets say we want to store a copy of car object on a local machine:
```
import java.io.*;
public class carSerialization {
  public static void main(String [] args) {
    Car myCar = new Car();
    myCar.model = "BMW 840Ci";
    myCar.engine = "4.0L M60 V8";
    myCar.topSpeed = 320;

      try {
        //open an output file
         FileOutputStream fileOut =
          new FileOutputStream("/myCar.ser");
        //make this file suitable to write
        //an object to
         ObjectOutputStream out =
          new ObjectOutputStream(fileOut);
        //write the object to the file
         out.writeObject(myCar);
         out.close();
         fileOut.close();
      }catch(IOException ex) {
         ex.printStackTrace();
      }
   }
}
```

It is important to use `try` and `catch` blocks as in this case we might get a fault upon loading the `myCar.ser` file.

**Advanced Section:**
- In order to use serialization with generics both of the generic types should be serializable:

`class Pair<L extends Serializable, R extends Serializable> implements Serializable`
---
## Practice

Consider the following:

```
class Engine {             
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

* No, Car has a non serializable field
* Engine should be marked as `transient`
* Yes, Car is serializable
* No, Car doesn't implement the necessary interface
* No, Car doesn't inherit form a serializable class
* Engine should be marked as `public`
* Car should implement `clonable` interface

---
## Revision

What interface should a class implement in order to be serializable?
???

How should a non serializable field be marked in order for the class to be serializable?
???

What is the conventional extension of a file that the information about the class is stored in?
???

* serializable
* `transient`
* `.ser`
* clonable
* `.txt`
* `public`
