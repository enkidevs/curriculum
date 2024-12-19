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

# Testing Flows

---
## Content

Testing Flow requires special considerations and utilities:

```kotlin
class UserViewModelTest {
    @Test
    fun `test flow emissions`() = runTest {
        // Create a test flow
        val flow = flow {
            emit("First")
            delay(100)
            emit("Second")
        }

        // Collect and verify values
        val values = mutableListOf<String>()
        val job = launch {
            flow.toList(values)
        }

        // Advance time and verify
        advanceTimeBy(50)
        assertEquals(listOf("First"), values)
        advanceTimeBy(50)
        assertEquals(listOf("First", "Second"), values)
    }
}
```

Testing StateFlow:
```kotlin
@Test
fun `test state flow updates`() = runTest {
    val viewModel = UserViewModel()
    val states = mutableListOf<UiState>()

    // Collect states
    val job = launch {
        viewModel.uiState.toList(states)
    }

    // Trigger state changes
    viewModel.loadUser()
    advanceUntilIdle()

    // Verify state sequence
    assertTrue(states[0].loading)
    assertFalse(states[1].loading)
    assertNotNull(states[1].data)
}
```

> 💡 Flow testing tips:
> - Use `runTest` for coroutine support
> - Control time with `advanceTimeBy`
> - Collect values into a list for verification
> - Cancel collection when done

---

## Practice

Complete the flow test:

```kotlin
@Test
fun test() = runTest {
    val flow = flow {
        emit(1)
        ???(100)
        emit(2)
    }
    
    val values = mutableListOf<Int>()
    launch { flow.???(values) }
    
    ???()
}
```

- `delay`
- `toList`
- `advanceUntilIdle`
- `sleep`
- `collect`
- `wait`

---

## Revision

To test a Flow that uses delays, you should:

???

- `Use runTest and advance time manually`
- `Use real delays`
- `Remove all delays`
- `Use Thread.sleep`
