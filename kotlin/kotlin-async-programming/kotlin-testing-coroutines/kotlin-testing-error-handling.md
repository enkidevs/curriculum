---
author: enki-ai
type: normal
category: must-know
---

# Testing Error Handling

---
## Content

Testing error scenarios in coroutines requires careful handling:

```kotlin
@Test
fun `test exception handling`() = runTest {
    val viewModel = UserViewModel()

    // Mock error response
    coEvery { repository.getUser() } throws
        IOException("Network error")

    // Collect states
    val states = mutableListOf<UiState>()
    val job = launch {
        viewModel.uiState.toList(states)
    }

    // Trigger error
    viewModel.loadUser()
    advanceUntilIdle()

    // Verify error state
    with(states.last()) {
        assertFalse(loading)
        assertNull(data)
        assertEquals("Network error", error)
    }
}
```

Testing cancellation:
```kotlin
@Test
fun `test coroutine cancellation`() = runTest {
    val job = launch {
        try {
            delay(1000)
            fail("Should not reach this")
        } catch (e: CancellationException) {
            // Expected cancellation
            assertTrue(true)
        }
    }

    delay(500)
    job.cancel()
    advanceUntilIdle()
}
```

> 💡 Error testing tips:
> - Mock exceptions using test frameworks
> - Verify error states and messages
> - Test cancellation scenarios
> - Check cleanup after errors
---

## Practice

Complete the error test:

```kotlin
@Test
fun test() = runTest {
    val job = launch {
        try {
            delay(1000)
        } catch (e: ???) {
            // Handle cancellation
        }
    }
    job.???()
}
```

- `CancellationException`
- `cancel`
- `Exception`
- `stop`

---

## Revision

When testing coroutine cancellation, you should:

???

- `Catch CancellationException`
- `Ignore all exceptions`
- `Use try-finally only`
- `Never cancel coroutines`
