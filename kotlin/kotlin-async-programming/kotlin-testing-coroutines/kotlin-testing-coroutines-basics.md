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

# Testing Coroutines Basics

---
## Content

Testing coroutines requires special setup and test utilities:

```kotlin
class UserViewModelTest {
    // TestCoroutineDispatcher for controlling virtual time
    private val testDispatcher = TestCoroutineDispatcher()

    // TestCoroutineScope for launching coroutines
    private val testScope = TestCoroutineScope(testDispatcher)

    @Before
    fun setup() {
        Dispatchers.setMain(testDispatcher)
    }

    @After
    fun cleanup() {
        Dispatchers.resetMain()
        testScope.cleanupTestCoroutines()
    }

    @Test
    fun `test loading user data`() = testScope.runBlockingTest {
        // Given
        val viewModel = UserViewModel()

        // When
        viewModel.loadUser()

        // Then
        assertEquals(true, viewModel.loading.value)
        advanceTimeBy(1000) // Move virtual time forward
        assertEquals(false, viewModel.loading.value)
    }
}
```

Key testing components:
- `TestCoroutineDispatcher`: Controls virtual time
- `TestCoroutineScope`: Manages test coroutines
- `runBlockingTest`: Runs test with coroutine support

> 💡 Always clean up test coroutines to prevent leaks.

---

## Practice

Complete the test setup:

```kotlin
private val testDispatcher = ???()
private val testScope = ???(testDispatcher)

@Before
fun setup() {
    Dispatchers.???(testDispatcher)
}
```

- `TestCoroutineDispatcher`
- `TestCoroutineScope`
- `setMain`
- `StandardTestDispatcher`
- `CoroutineScope`
- `setDefault`

---

## Revision

To advance virtual time in a coroutine test, use:

???

- `advanceTimeBy(timeMillis)`
- `Thread.sleep(timeMillis)`
- `delay(timeMillis)`
- `wait(timeMillis)`
