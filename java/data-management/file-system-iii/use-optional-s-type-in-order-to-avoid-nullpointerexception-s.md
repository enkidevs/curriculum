---
author: catalin
type: normal
category: feature
links:
  - >-
    [www.concretepage.com](http://www.concretepage.com/java/jdk-8/java-8-optional-example-avoid-nullpointerexception){website}
  - >-
    [blog.idrsolutions.com](https://blog.idrsolutions.com/2015/04/java-8-optional-class-explained-in-5-minutes/){website}
notes: >-
  https://insights.enki.com/#/contrib/others/55f03bb3f457f33b0062114e?search=khandelwalrinki
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

# Use `Optional(s)` type in order to avoid `NullPointerException(s)`


---

## Content

Java 8 comes with a new `Optional` type, a new container type that wraps a single value, if the value is available. It's meant to convey the meaning that the value might be absent.

Create an `Optional`:

```java
Optional<String> 
   myName = Optional.ofNullable( null );

```

Check if the instance is not null with `isPresent()` method:

```java
System.out.println( "Name is set? " 
   + fullName.isPresent() ); 
//output: False

```

The `orElseGet()` method will provide a default value in case `Optional` is null.

```java
System.out.println( "Name: " 
   + myName.orElseGet( () -> "[none]" ) )
//output: Name: [none]

```

The `map()` method transforms the current `Optional`’s value and returns the new `Optional` instance. The `orElse()` method  accepts a default value if the `optional` is null.

```java
System.out.println( myName.map( s ->
    "Hey " + s + "!" ).
    orElse( "Hey Stranger!" ) );
//output: Hey Stranger!
```

Optional should be used as the return type of functions that might not return a value.


---

## Practice

Check if an optional’s instance is not `null`:

```java
Optional<String> 
   myName = Optional.ofNullable( null );
myName.???();
```

- `isPresent` 
- `isNull` 
- `isEmpty` 
- `isNotNull`


---

## Revision

Create an empty `Optional` of type `String`:

```java
???<???> op =
  Optional.empty();
```

- `Optional` 
- `String` 
- `Op` 
- `string` 
- `EmptyOptional` 
- `null`
