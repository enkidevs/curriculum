---
author: Stefan-Stojanovic

type: normal

category: must-know

---

# What is C++?

---

## Content

C++ is a free, highly efficient, flexible, open-source programming language.

It cas been used for varied tasks such as creating operating systems, game development, and even in advanced physics research.


C++ includes features that are low-level and allow more direct control over the system hardware, such as memory management.

Here's an example of how you might dynamically allocate and deallocate memory in C++:

```cpp
#include<iostream>
using namespace std;

int main() {
    int* ptr = new int;  // dynamically allocate memory
    *ptr = 10;  // assign value to allocated memory

    cout << *ptr << endl;  // print value

    delete ptr;  // deallocate memory
    return 0;
}
```

> Do not worry if you do not understand the code, this is just an example to get you confortable with the syntax. We will dive deeper into it later on.

> 💬 Why are you interested in **C++**?
> 
> Leave a comment or view some of the other comments for inspiration before moving on.
