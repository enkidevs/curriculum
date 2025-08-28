---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <div class="card">
        <img src="https://img.enkipro.com/2e6f97afb190936d1b4376bbb253d5c7.jpeg" alt="Product" />
        <h2>Product Name</h2>
        <p>$19.99</p>
        <button class="buy-btn">Buy Now</button>
      </div>
    </div>
  startingCss: |
    /* 
    Task:
    1. Add an interactive effect to the card when tapped.
    2. Make the button change color when pressed.
    3. Use transform and box-shadow for subtle animations.
    */

    .card {
      width: 250px;
      padding: 15px;
      border-radius: 10px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.15);
      text-align: center;
      background: #fff;
      transition: transform 0.2s ease, box-shadow 0.2s ease;
    }

    .card:active,
    .card:focus {
      transform: scale(1.05);
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.25);
    }

    img {
      width: 100%;
      border-radius: 8px;
      margin-bottom: 10px;
    }

    .buy-btn {
      padding: 10px;
      width: 100%;
      border: none;
      border-radius: 5px;
      background-color: #3498db;
      color: #fff;
      font-size: 16px;
      transition: background-color 0.2s ease;
    }

    .buy-btn:active,
    .buy-btn:focus {
      background-color: #2980b9;
    }
  startingJs: |
    // No JavaScript needed
---

# Interactive Cards with Tap Effects

---

## Content

In this exercise, you will:
- Make a product card interactive on **tap**.
- Add a smooth animation when the card is pressed.
- Style the "Buy Now" button for a better mobile experience.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- On mobile, `:hover` doesn’t work — use `:active` and `:focus` instead.
- Slight enlargement on tap:

```css
.card:active {
  transform: scale(1.05);
}
```

- Button color on press:

```css
.buy-btn:active {
  background-color: #2980b9;
}
```

- Use transition for smooth animations.

```css
.card, .buy-btn {
  transition: all 0.3s ease;
}
```