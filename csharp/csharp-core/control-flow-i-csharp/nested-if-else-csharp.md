---
author: Stefan-Stojanovic
type: normal
category: discussion
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Nested `if...else`

---

## Content

In C#, we can have an `if-else` statement inside another `if-else` statement. This is called nesting.

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

> 💬 Can you decipher the code? What will happen if `age = 65`?

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
- `>=`
- `<=`

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