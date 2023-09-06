---
author: Stefan-Stojanovic
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# do...while Loops

---

## Content
A `do-while` loop is similar to a `while` loop, but with a crucial difference:

The code block is executed at least once, regardless of the condition. 

Only after the code block is executed, the condition is checked. If it's true, the loop continues; otherwise, it stops:

```csharp
int i = 0;

do
{
  Console.Write(i);
  i++;
}
while(i < 5);
// 012345
```


---
## Practice

Fill in the blanks to output the numbers 1 through 7:

```csharp
int i = 1;

???
{
  Console.Write(i);
  i++;
}
???(i ??? 7);
// 1234567
```

- do
- while
- `<=`
- `<`

---
## Revision

Fill in the blanks to output the numbers 5 through 10:

```csharp
int i = 5;

???
{
  Console.WriteLine(i);
  i++;
}
???(i ??? 10);

```

- do
- while
- `<=`
- `<`
