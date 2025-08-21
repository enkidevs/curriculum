---
author: enki-ai
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

# Real-World: To-Do Lists

---
## Content

Imagine managing tasks in a to-do app. You can add new tasks or remove completed ones using a mutable list, just like updating a shopping list:

```kotlin
fun updateTasks(taskToAdd: String, taskToRemove: String): MutableList<String> {
    val tasks = mutableListOf("Buy groceries", "Call mom", "Finish homework")
    tasks.add(taskToAdd)
    tasks.remove(taskToRemove)
    return tasks
}
```

> 💡 The `MutableList` type is the return type of `mutableListOf()`. Since we're returning tasks, which are created by passing a list of strings to `mutableListOf()`, we need to specify `MutableList<String>` as the return type.

This function updates the task list dynamically, reflecting real-world scenarios where tasks change frequently.

```kotlin
updateTasks("Walk the dog", "Call mom")
// Output: [Buy groceries, Finish homework, Walk the dog]
```

> 💬 How do you manage your tasks? Do you think you'll write a Kotlin program to manage your tasks?
  
---
## Practice

Fill in the code to make the comment true:

```kotlin
fun updateTasks(taskToAdd: String, taskToRemove: String): ??? {
    val tasks = ???("Buy groceries", "Call mom", "Finish homework")
    tasks.add(taskToAdd)
    tasks.remove(taskToRemove)
    return tasks
}

updateTasks("Walk the dog", "Call mom")

// …should return: [Buy groceries, Finish homework, Walk the dog]
```


- `MutableList<String>`
- `mutableListOf()`
- `List<String>`
- `listOf()`
- `createList()`


---
## Revision

Finish the function such that the result is `[Buy groceries, Walk the dog]`.

```kotlin
fun updateTasks(taskToAdd: String, taskToRemove: String): MutableList<String> {
    val tasks = mutableListOf("Buy groceries", "Finish homework")
    tasks.add(taskToAdd)
    tasks.remove(taskToRemove)
    return tasks
}

updateTasks(???, ???)
```

- `"Walk the dog"`
- `"Finish homework"`
