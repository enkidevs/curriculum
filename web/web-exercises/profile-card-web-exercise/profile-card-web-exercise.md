---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <div class="profile-card">
        <img src="https://img.enkipro.com/2e6f97afb190936d1b4376bbb253d5c7.jpeg" alt="Profile Picture">
        <h2>John Doe</h2>
        <p class="title">Frontend Developer</p>
        <p class="location">Belgrade, Serbia</p>
        <button>Follow</button>
      </div>
    </div>
  startingCss: |
    /* 
    Task:
    1. Center the profile card in the middle of the page.
    2. Give the card a shadow, rounded corners, and padding.
    3. Make the profile image circular.
    4. Style the "Follow" button with a hover effect.
    */

    body {
      /* Use flexbox to center the card vertically and horizontally */
    }

    .profile-card {
      /* Add width, padding, border-radius, box-shadow */
    }

    .profile-card img {
      /* Make the image circular and set a fixed size */
    }

    .title {
      /* Style the job title with a lighter color and smaller size */
    }

    button {
      /* Add background, padding, and hover transition */
    }
  startingJs: |
    // No JavaScript needed
---

# Profile Card Layout Exercise

---

## Content

In this exercise, you will:
- Create and style a profile card component.
- Practice CSS flexbox centering techniques.
- Apply rounded corners, shadows, and hover effects for interactivity.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use flexbox on `body`:  

```css
body {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
}
```

- Profile card example:

```css
.profile-card {
  width: 280px;
  padding: 20px;
  border-radius: 12px;
  box-shadow: 0 4px 10px rgba(0,0,0,0.2);
  text-align: center;
}
```

- Circular image:

```css
.profile-card img {
  width: 100px;
  height: 100px;
  border-radius: 50%;
}
```

- Button hover:

```css
button {
  background: #0078ff;
  color: white;
  border: none;
  padding: 10px 16px;
  cursor: pointer;
  transition: background 0.3s ease;
}

button:hover {
  background: #005fc4;
}
```