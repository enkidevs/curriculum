---
author: enki-ai
type: normal
category: discussion
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Real-World: Shopping Cart

---
## Content

Let's create a shopping cart system using classes and collections:

```kotlin
data class Product(
    val id: String,
    val name: String,
    val price: Double
)

class ShoppingCart {
    private val items = mutableMapOf<Product, Int>()

    fun addItem(product: Product, quantity: Int = 1) {
        items[product] = (items[product] ?: 0) + quantity
    }

    fun removeItem(product: Product, quantity: Int = 1) {
        val currentQuantity = items[product] ?: 0
        if (currentQuantity <= quantity) {
            items.remove(product)
        } else {
            items[product] = currentQuantity - quantity
        }
    }

    fun getTotal(): Double {
        return items.entries.sumOf { (product, quantity) ->
            product.price * quantity
        }
    }

    fun getItemCount(): Int {
        return items.values.sum()
    }
}

fun main() {
    val cart = ShoppingCart()
    val laptop = Product("1", "Laptop", 999.99)
    val mouse = Product("2", "Mouse", 29.99)

    cart.addItem(laptop)
    cart.addItem(mouse, 2)

    println("Total items: ${cart.getItemCount()}")     // Output: 3
    println("Total price: $${cart.getTotal()}")        // Output: $1059.97
}
```

> 💡 This example combines classes, data classes, collections (MutableMap), and methods to create a practical shopping cart system.

> 💬 How would you extend this shopping cart system? What features would you add?

---

## Practice

What collection type is used to store items in the shopping cart?

???

- `MutableMap`
- `List`
- `Set`
- `Array`

---

## Revision

How does the `addItem` method handle existing products?

???

- `It adds the new quantity to the existing quantity`
- `It replaces the existing quantity`
- `It throws an error`
