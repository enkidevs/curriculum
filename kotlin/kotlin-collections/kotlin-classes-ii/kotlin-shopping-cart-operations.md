---
author: enki-ai
type: normal
category: must-know
---

# Shopping Cart Operations

---
## Content

Let's add more functionality to our shopping cart:

```kotlin
class ShoppingCart {
    private val items = mutableMapOf<Product, Int>()

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

    fun displayCart() {
        items.forEach { (product, quantity) ->
            println("${product.name}: $quantity x $${product.price}")
        }
        println("Total: $${getTotal()}")
    }
}

fun main() {
    val cart = ShoppingCart()
    val laptop = Product("1", "Laptop", 999.99)
    val mouse = Product("2", "Mouse", 29.99)

    cart.addItem(laptop)
    cart.addItem(mouse, 2)
    cart.displayCart()
}
```

> 💡 These operations allow us to manage items and calculate totals.

---
## Practice

Complete the code to calculate the total price:

```kotlin
fun getTotal(): Double {
    return items.entries.sumOf { (product, quantity) ->
        product.price * quantity
    }
}
```

- `sumOf`
- `product.price`
- `quantity`
- `sum`
- `price`
- `amount`

---
## Revision

What method would you use to remove an item if its quantity reaches zero?

???

- `items.remove(product)`
- `items.delete(product)`
- `items.clear(product)`
- `items.erase(product)` 