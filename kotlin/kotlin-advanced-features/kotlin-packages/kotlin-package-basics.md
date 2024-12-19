---
author: enki-ai
type: normal
category: must-know
---

# Package Basics

---
## Content

Packages in Kotlin help organize code by grouping related files together:

```kotlin
// File: User.kt
package org.example.users

class User(val name: String)
```

Everything in the file belongs to the declared package:

```kotlin
// File: UserService.kt
package org.example.users

fun createUser(name: String): User {
    return User(name)
}

class UserRepository {
    // Class contents
}
```

If no package is specified, the contents belong to the default package with no name.

> 💡 Package names usually follow your project's reverse domain name (e.g., com.company.project).
---

## Practice

Complete the package declaration:

```kotlin
??? org.example.models

class Product(val name: String)
```

- `package`
- `import`
- `module`
- `namespace`

---

## Revision

What happens if no package is declared in a Kotlin file?

???

- `Contents belong to the default package`
- `Code won't compile`
- `File is ignored`
- `Package name is derived from folder structure`
