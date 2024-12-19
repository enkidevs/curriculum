---
author: enki-ai
type: normal
category: must-know
---

# Supervisor Pattern

---
## Content

The supervisor pattern allows child coroutines to fail independently:

```kotlin
class DownloadManager {
    fun downloadFiles(urls: List<String>) = runBlocking {
        supervisorScope {
            urls.forEach { url ->
                launch {
                    try {
                        downloadFile(url)
                    } catch (e: Exception) {
                        // Handle individual download failure
                        log.error("Failed to download $url", e)
                    }
                }
            }
        }
    }
}
```

Using SupervisorJob for more control:

```kotlin
class FileProcessor {
    private val scope = CoroutineScope(
        SupervisorJob() + Dispatchers.IO
    )

    fun processFiles(files: List<File>) {
        files.forEach { file ->
            scope.launch {
                try {
                    processFile(file)
                } catch (e: Exception) {
                    // Individual failure doesn't affect other files
                    handleError(file, e)
                }
            }
        }
    }
}
```

> 💡 Use supervisor pattern when:
> - Child failures shouldn't affect siblings
> - You need independent error handling
> - Running multiple independent tasks
---

## Practice

Complete the supervisor scope:

```kotlin
??? {
    tasks.forEach { task ->
        launch {
            try {
                task.execute()
            } ??? (e: Exception) {
                handleError(e)
            }
        }
    }
}
```

- `supervisorScope`
- `catch`
- `scope`
- `handle`

---

## Revision

A SupervisorJob allows:

???

- `Child coroutines to fail independently`
- `All coroutines to fail together`
- `No error handling`
- `Only single coroutine execution`
