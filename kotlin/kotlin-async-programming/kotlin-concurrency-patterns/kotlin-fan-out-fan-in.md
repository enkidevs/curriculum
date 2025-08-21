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

# Fan-Out Fan-In Pattern

---
## Content

The fan-out fan-in pattern distributes work across multiple coroutines and combines results:

```kotlin
suspend fun processData(items: List<Item>): List<Result> = coroutineScope {
    // Fan out: Create channel for input
    val channel = Channel<Item>()

    // Launch multiple workers (fan-out)
    val workers = List(3) { workerId ->
        async {
            // Process items from channel
            channel.consumeEach { item ->
                processItem(item, workerId)
            }
        }
    }

    // Send work to channel
    launch {
        items.forEach { channel.send(it) }
        channel.close() // Signal completion
    }

    // Fan in: Wait for all workers and combine results
    workers.awaitAll()
}
```

Real-world example:

```kotlin
class ImageProcessor {
    suspend fun processImages(images: List<Image>): List<ProcessedImage> {
        return coroutineScope {
            // Create processing channel
            val channel = Channel<Image>()

            // Launch multiple processors
            val results = List(4) { processorId ->
                async {
                    val processed = mutableListOf<ProcessedImage>()
                    for (image in channel) {
                        processed.add(processImage(image))
                    }
                    processed
                }
            }

            // Send images to processors
            launch {
                images.forEach { channel.send(it) }
                channel.close()
            }

            // Combine all results
            results.awaitAll().flatten()
        }
    }
}
```

> 💡 Use this pattern when:
> - Work can be parallelized
> - Processing order doesn't matter
> - You need to combine results

---

## Practice

Complete the fan-out fan-in pattern:

```kotlin
val workers = List(3) { 
    ??? {
        channel.??? { item ->
            process(item)
        }
    }
}
workers.???()
```

- `async`
- `consumeEach`
- `awaitAll`
- `launch`
- `forEach`
- `wait`

---

## Revision

Fan-out fan-in pattern is used for:

???

- `Parallel processing with result combination`
- `Sequential processing`
- `Error handling`
- `State management`
