---
author: fahimrahman
type: normal
category: how-to
tags:
  - array
  - component-type
  - java.lang.Class
links:
  - >-
    [www.tutorialspoint.com](http://www.tutorialspoint.com/java/lang/class_getcomponenttype.htm){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Retrieve the component type of an array


---

## Content

If the *type* of components in an array is unknown, they can be retrieved by using the `getComponentType()` method. This method will return the Class representing the element type of the array.

The method returns `null` if the object on which this method is called does not represent an array.

First, since every array is an object, `getClass()` method is called to get the Class object associated with the array. Then the `getComponentType()` retrieves the type of the elements as follows:

```java
public class ElementsTypeInArray {

  public static void main(String[] args){
    
    double[] array1 = {1.0, 7.0, 3.4};
    String[] array2 = {"one","two","six"};
    
    Class array1Class = array1.getClass();
    Class array2Class = array2.getClass();
    
    System.out.println(
      array1Class.getComponentType());
      //double
    System.out.println(
      array2Class.getComponentType());
      //java.lang.String
  }

}
```


---

## Practice

What will be returned by the following code snippet?

```java
int[] array = {1, 2, 3}
Class arrayClass = array.getClass();
return arrayClass.getComponentType(); 
```

???

- `int` 
- `double` 
- `Class` 
- `Array` 
- `ArrayList`


---

## Revision

What method is used to get the type of an array?

???

- `getComponentType()` 
- `getType()` 
- `getClass()` 
- `getArrayType()`
