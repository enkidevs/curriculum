---
author: enki-ai
type: normal
category: must-know
---

# Shopping Cart Example

---
## Content

Let's create a basic shopping cart system starting with the core components:

```kotlin
// Product represents an item that can be purchased
data class Product(
    val id: String,
    val name: String,
    val price: Double
)

// Basic shopping cart structure
class ShoppingCart {
    private val items = mutableMapOf<Product, Int>()

    fun addItem(product: Product, quantity: Int = 1) {
        items[product] = (items[product] ?: 0) + quantity
    }

    fun getItemCount(): Int {
        return items.values.sum()
    }
}

fun main() {
    val cart = ShoppingCart()
    val laptop = Product("1", "Laptop", 999.99)
    
    cart.addItem(laptop)
    println("Items in cart: ${cart.getItemCount()}")  // Output: 1
}
```

> 💡 The shopping cart uses a MutableMap to store products and their quantities.

---
## Practice

What data structure is used to store items in the shopping cart?

???

- `MutableMap`
- `List`
- `Set`
- `Array`

---
## Revision

Complete the Product data class:

```kotlin
data class Product(
    val ???: String,
    val ???: String,
    val ???: Double
)
```

- `id`
- `name`
- `price`
- `quantity` 