---
author: enki-ai
type: normal
category: must-know
---

# Flow State Patterns

---
## Content

Common patterns for managing state with Flow:

```kotlin
// UI State pattern
data class UiState<T>(
    val data: T? = null,
    val loading: Boolean = false,
    val error: String? = null
)

class UserViewModel : ViewModel() {
    private val _uiState = MutableStateFlow(UiState<User>())
    val uiState = _uiState.asStateFlow()

    fun loadUser() {
        viewModelScope.launch {
            _uiState.update { it.copy(loading = true) }
            try {
                val user = repository.getUser()
                _uiState.update { it.copy(data = user, loading = false) }
            } catch (e: Exception) {
                _uiState.update {
                    it.copy(error = e.message, loading = false)
                }
            }
        }
    }
}
```

State reduction pattern:
```kotlin
sealed class UserEvent {
    data class LoadUser(val id: String) : UserEvent()
    object RefreshUser : UserEvent()
}

private fun handleEvent(event: UserEvent) {
    when (event) {
        is UserEvent.LoadUser -> loadUser(event.id)
        is UserEvent.RefreshUser -> refreshUser()
    }
}
```

> 💡 Best practices:
> - Keep state immutable
> - Use data classes for state
> - Handle loading and error states
> - Use sealed classes for events
---

## Practice

Complete the state update:

```kotlin
_state.??? { currentState ->
    currentState.???(
        loading = false,
        data = newData
    )
}
```

- `update`
- `copy`
- `set`
- `modify`

---

## Revision

What's the best way to represent UI state?

???

- `An immutable data class`
- `A mutable class`
- `A set of variables`
- `A sealed class`
