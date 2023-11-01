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

# foreach Loop

---

## Content

The `foreach` loop is used to iterate over collections (like `arrays` or `lists`).

Here's an example of a `foreach` loop:

```csharp
int[] numbers = {0, 1, 2, 3, 4};

foreach(int i in numbers)
{
  Console.Write(i);
}
// 01234
```

This loop will print the numbers from 0 to 4. It takes each element from the numbers array and prints it.


---

## Practice

Fill in the blanks to output the values of the array:

```csharp
string[] words = {"I", "love", "C#"};

foreach(string ??? in ???)
{
  Console.WriteLine(word);
}
// I
// love
// C#
```

- word
- words
- i
- string

---
## Revision

Fill in the blanks to output the values of the array:

```csharp
string[] words = {"Hello", "World"};

foreach(string ??? in ???)
{
  Console.WriteLine(word);
}
```

- word
- words
- i
- string