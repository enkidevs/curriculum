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

# How does C# work?

---

## Content


When you write C# code, it doesn't run directly; instead, it undergoes a transformative process using a compiler.

The compiler:

1.  Reads your C# code
2. Translates C# into Common Intermediate Language (CIL)
3. When executed, the Just-In-Time (JIT) compiler[1] turns CIL into machine code.

Voilà! Your program is ready to groove! 🎊

Next, will dive into some of the most popular tools in the **C#** ecosystem.

---

## Practice

The Just-In-Time compiler turns ??? into machine code, which the computer can understand.

- Common Intermediate Language(CIL)
- C#
- C++
- C

---

## Revision

The Just-In-Time compiler turns ??? into machine code, which the computer can understand.

- Common Intermediate Language(CIL)
- C#
- C++
- C


---

## Footnotes

[1: Just-In-Time Compiler]

The "Just-In-Time" name indicates the timing of the compilation. 
 
Instead of compiling the entire application's CIL code to machine code at once, the JIT compiler does this "just in time" for execution, converting individual methods or functions as they are called. 
 
This approach has both advantages and disadvantages. One advantage is that the JIT compiler can optimize the machine code for the specific hardware it's running on. However, there's also an initial performance cost due to the time it takes for JIT compilation.