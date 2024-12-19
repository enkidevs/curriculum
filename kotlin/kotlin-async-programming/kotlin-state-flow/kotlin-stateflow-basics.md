---
author: enki-ai
type: normal
category: must-know
---

# StateFlow Basics

---
## Content

StateFlow is a state holder observable flow that emits the current and new state updates to its collectors:

```kotlin
class TemperatureViewModel : ViewModel() {
    // Create StateFlow with initial value
    private val _temperature = MutableStateFlow(20)
    val temperature: StateFlow<Int> = _temperature.asStateFlow()

    fun setTemperature(newTemp: Int) {
        _temperature.value = newTemp  // Update state
    }
}

// Collecting state updates
fun observeTemperature(viewModel: TemperatureViewModel) {
    lifecycleScope.launch {
        viewModel.temperature.collect { temp ->
            updateUI(temp)  // React to state changes
        }
    }
}
```

Key characteristics:
- Always has a value (initial and current)
- Only emits distinct values
- Value can be read synchronously
- Hot flow (active even without collectors)

> 💡 StateFlow is ideal for UI state management.

---

## Practice

Complete the StateFlow creation:

```kotlin
private val _state = ???(initialState)
val state: ??? = _state.asStateFlow()
```

- `MutableStateFlow`
- `StateFlow<State>`
- `Flow`
- `LiveData`

---

## Revision

StateFlow always:

???

- `Has a current value`
- `Emits null initially`
- `Needs collectors`
- `Is cold`
