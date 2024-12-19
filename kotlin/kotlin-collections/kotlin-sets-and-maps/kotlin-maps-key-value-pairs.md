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

# Maps: Key-Value Pairs

---
## Content

Maps in Kotlin are like a phone book - each name (key) is paired with a phone number (value).

```kotlin
fun main() {
    val countryCapitals = mapOf(
        "France" to "Paris",
        "Japan" to "Tokyo",
        "Italy" to "Rome"
    )

    println(countryCapitals["France"]) // Output: Paris
    println(countryCapitals.keys) // Output: [France, Japan, Italy]
    println(countryCapitals.values) // Output: [Paris, Tokyo, Rome]
}
```

> 💡 Maps store data as key-value pairs using the `to` keyword.

You can create mutable maps that can be modified:

```kotlin
fun main() {
    val scores = mutableMapOf(
        "Player1" to 100,
        "Player2" to 85
    )
    scores["Player3"] = 90 // Add new entry
    scores["Player1"] = 95 // Update existing entry
    println(scores) // Output: {Player1=95, Player2=85, Player3=90}
}
```
---

## Practice

Complete the code to create a map of ages:

```kotlin
val ages = ???(
    "Alice" ??? 25,
    "Bob" ??? 30
)
```

- `mapOf`
- `to`
- `to`
- `=`
- `:`

---

## Revision

How do you access the value for "key" in this map?

```kotlin
val map = mapOf("key" to "value")
println(???)
```

- `map["key"]`
- `map.key`
- `map.get("key")`
