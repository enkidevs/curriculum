---
author: emmab
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

# Nested `if...else`

---

## Content

In C#, we can have an `if-else` statement inside another `if-else` statement. This is called nesting.

Nested `if-else` statements can be used to perform complex decision making.

Here's a basic example:

```csharp
int age = 20;

if(age >= 18){
  if(age <= 60){
    Console.WriteLine("You are an adult.");
  }
  else{
    Console.WriteLine("You are a senior.");
  }
}
else{
  Console.WriteLine("You are not an adult.");
}

// You are an adult
```

In this example, the program first checks if `age` is greater than or equal to `18`.

If true, it enters the next level of the `if` statement and checks if age is less than or equal to 60.

If true, it outputs `"You are an adult."`

If false, it outputs `"You are a senior."`

If the first `if` condition is false, it outputs `"You are not an adult."`.

---

## Practice

Fill in the code to output "You are a senior":

```csharp
int ??? = 70;

if(age ??? 18){
  if(age ??? 60){
    Console.WriteLine("You are an adult.");
  }
  else{
    Console.WriteLine("You are a senior.");
  }
}
else{
  Console.WriteLine("You are not an adult.");
}
// Output: You are a senior.
```

- `age`
- `<=` 
- `>=`

---

## Revision

Fill in the code to output "You are not an adult":

```csharp
int ??? = 17;

if(age ??? 18){
  if(age ??? 60){
    Console.WriteLine("You are an adult.");
  }
  else{
    Console.WriteLine("You are a senior.");
  }
}
else{
  Console.WriteLine("You are not an adult.");
}
// Output: You are not an adult.
```

- `age`
- `>=`
- `<=` 