---
author: enki-ai
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

# Import Statements

---
## Content

Use imports to access code from other packages:

```kotlin
// Import a single class
import org.example.users.User

// Import everything from a package
import org.example.users.*

// Import with alias to avoid naming conflicts
import org.example.users.User as AppUser
```

Example usage:

```kotlin
import org.example.users.User
import org.example.services.EmailService
import org.example.utils.Logger as AppLogger

fun main() {
    val user = User("John")
    val logger = AppLogger()
    val emailService = EmailService()
}
```

> 💡 Imports can include classes, functions, properties, and object declarations.

---

## Practice

Import a class with an alias to avoid naming conflicts:

```kotlin
import com.example.User ??? CustomUser

val user = CustomUser()
```

- `as`
- `alias`
- `named`
- `like`

---

## Revision

What's the difference between `import org.example.User` and
`import org.example.*`?

???

- `First imports only User class, second imports everything in the package`
- `They do exactly the same thing`
- `First imports everything, second imports only User class`
- `Second one is invalid syntax`
