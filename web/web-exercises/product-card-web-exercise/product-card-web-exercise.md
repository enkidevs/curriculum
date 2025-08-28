---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <div class="product-card">
        <img src="https://img.enkipro.com/2e6f97afb190936d1b4376bbb253d5c7.jpeg" alt="Product">
        <div class="product-info">
          <h2>Wireless Headphones</h2>
          <p class="price">$199.99</p>
          <p class="desc">Noise-cancelling headphones with up to 30 hours of battery life.</p>
          <div class="buttons">
            <button class="add">Add to Cart</button>
            <button class="buy">Buy Now</button>
          </div>
        </div>
      </div>
    </div>
  startingCss: |
    /* 
    Task:
    1. Use flexbox to align the image on the left and product details on the right.
    2. Style the product card with padding, border-radius, and shadow.
    3. Make the image a fixed width and responsive.
    4. Style the buttons differently, with hover transitions.
    5. On small screens, stack the image above the details.
    */

    body {
      font-family: Arial, sans-serif;
      background: #f8f8f8;
      padding: 20px;
    }

    .product-card {
      /* Apply flexbox layout */
    }

    .product-card img {
      /* Set width and rounded corners */
    }

    .product-info {
      /* Add padding and flexible width */
    }

    .buttons {
      /* Display buttons side by side with spacing */
    }

    /* Add responsive behavior for smaller screens */
  startingJs: |
    // No JavaScript needed
---

# Product Card Layout with Flexbox

---

## Content

In this exercise, you will:
- Use **flexbox** to build a two-column product card.
- Style buttons and add hover effects.
- Make the layout **responsive** using a media query.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Flexbox on container:

```css
.product-card {
  display: flex;
  gap: 20px;
  background: #fff;
  padding: 20px;
  border-radius: 12px;
  box-shadow: 0 4px 12px rgba(0,0,0,0.1);
}
```

- Responsive image:

```css
.product-card img {
  width: 180px;
  border-radius: 8px;
  object-fit: cover;
}
```

- Buttons row:

```css
.buttons {
  display: flex;
  gap: 10px;
  margin-top: 12px;
}

button {
  flex: 1;
  padding: 10px;
  border: none;
  color: white;
  cursor: pointer;
  transition: background 0.3s ease;
}

.add {
  background: #0078ff;
}
.add:hover {
  background: #005fc4;
}

.buy {
  background: #28a745;
}
.buy:hover {
  background: #1e7a32;
}

```

- Responsive stacking:

```css
@media (max-width: 600px) {
  .product-card {
    flex-direction: column;
    align-items: center;
  }

  .product-card img {
    width: 100%;
  }
}
```