---
author: catalin
type: normal
category: feature
links:
  - >-
    [www.java-tips.org](http://www.java-tips.org/java-lang/2513-how-to-set-field-values-using-java-reflection.html){website}
notes: 'https://insights.enki.com/#/contrib/55ae3539d457944f00962ca4'
---

# Fields with Java **Reflection API**


---

## Content

As a part of the **Reflection API**, the `java.lang.reflect.Field` class represents a generic *field* in a class or interface, allowing the programmatic retrieval of field information (name, value, annotations), or even modification of a field.

Getting a specific field:

```java
Field intField =  
myObj.getClass().getField("x");

```

You can iterate through fields. By default, you are not allowed to access **non-public** fields, yet calling the `setAccessible` method will grant access:

```java
Field[] fields = 
  myObj.getClass().getDeclaredFields();
for (Field field : fields) 
  field.setAccessible(true)
```

You can get the name, type or the value of a field:

```java
field.getName();
field.getType();
field.get(myObj);
```

Setting a field value:

```java
intField.setInt(myObj, intValue);

```

An interesting usage of the `Field` class is getting and modifying fields' annotations at runtime.
Get annotations from a class:

```java
field.getDeclaredAnnotations(); 
```


---

## Practice

Complete the following code snippet to set the value of the field to 10:

```java
intField.???(myObj, 10);
```

- `setInt` 
- `set` 
- `setField`


---

## Revision

Complete the following code snippet to get the field named “Enki”:

```java
Field intField = 
  ???.getClass()
          .???("Enki");
```

- `myObj` 
- `getField` 
- `field` 
- `setField` 
- `find`
