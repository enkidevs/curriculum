# Restricting pointers
author: luke

levels:

  - advanced

type: normal

category: pattern

links:

  - '[Demystifying the restrict keyword](http://cellperformance.beyond3d.com/articles/2006/05/demystifying-the-restrict-keyword.html)'

---
## Content

`restrict`[1] is a C99 keyword that tells the compiler that a pointer will only
be used to access a single object, or a value directly derived from it. Using
the keyword for function parameters specifies that two or more pointers
will not overlap one another.

When multiple pointers reference the same memory location, more properly known
as *aliasing*, the compiler must ensure that the values pointed to have no
changed by reloading them each time they are accessed. The `restrict` keyword
allows the compiler to forgo this step and can dramatically improve the running
time of loops.

An additional benefit of using `restrict` is that it enables the use of
parallelized *vector* instructions for inner-loop operations. This provides an
enormous speed and space improvements as much of the loop body can be computed
in a single instruction.

```
void move(vector3* restrict velocity,
  vector3* restrict position,
  vector3* restrict acceleration,
  float time_step, size_t count) {
  for (size_t i = 0; i < count; i++) {
    velocity[i].x += acceleration[i].x
      * time_step;
    velocity[i].y += acceleration[i].y
      * time_step;
    velocity[i].z += acceleration[i].z
      * time_step;
    position[i].x += velocity[i].x
      * time_step;
    position[i].y += velocity[i].y
      * time_step;
    position[i].z += velocity[i].z
      * time_step;
  }
}
```

In the example above the use of `restrict` allows the compiler to use vector
instructions to run the loop body in parallel. Without using `restrict` it is
possible that `velocity`, `position` and `acceleration` may point to the same
memory block and so the values must be reloaded before each operation.

---
## Practice

How does `restrict` provide a performance increase?
???

* reducing number of load operations
* ensuring code is page-aligned
* omitting memory collision checks

---
## Revision

What does the `restrict` keyword imply?
???

* A pointer will only be used to access the memory location it points to
* A variable or pointer will not be redeclared
* A pointer can be used as a parameter for a vector instruction

---
## Footnotes

[1:Compiler differences]
The keyword is defined differently for each compiler and may be alternatively
written `restrict` (GCC), `__restrict` (Visual C++) or `__restrict__` (Clang).
