---
author: enki-ai
type: normal
category: must-know
---

# Test Dispatchers

---
## Content

Different test dispatchers serve different testing needs:

```kotlin
// Standard test dispatcher - runs eagerly
val standardDispatcher = StandardTestDispatcher()

// Unconfined test dispatcher - immediate execution
val unconfinedDispatcher = UnconfinedTestDispatcher()

@Test
fun `test with different dispatchers`() = runTest {
    var result = ""

    // Standard dispatcher queues execution
    launch(standardDispatcher) {
        result += "1"
    }
    result += "2"
    // Result is "2" until we advance time
    assertEquals("2", result)
    advanceUntilIdle()
    assertEquals("21", result)

    // Unconfined dispatcher executes immediately
    launch(unconfinedDispatcher) {
        result += "3"
    }
    // Result includes "3" immediately
    assertEquals("213", result)
}
```

Using time control:
```kotlin
@Test
fun `test with time control`() = runTest {
    val dispatcher = StandardTestDispatcher(testScheduler)

    var completed = false
    launch(dispatcher) {
        delay(1000)
        completed = true
    }

    assertFalse(completed)
    advanceTimeBy(500)
    assertFalse(completed)
    advanceTimeBy(500)
    assertTrue(completed)
}
```

> Choose the right dispatcher:
> - `StandardTestDispatcher` for controlled execution
> - `UnconfinedTestDispatcher` for immediate execution
> - Use `advanceTimeBy()` or `advanceUntilIdle()` to control time

---

## Practice

Complete the test with time control:

```kotlin
@Test
fun test() = runTest {
    val job = launch {
        delay(1000)
        flag = true
    }
    assertFalse(flag)
    ???(1000)
    assertTrue(flag)
}
```

- `advanceTimeBy`
- `delay`
- `sleep`
- `wait`

---

## Revision

The ??? dispatcher executes coroutines immediately without delay.

- `UnconfinedTest`
- `StandardTest`
- `Main`
- `Default`
