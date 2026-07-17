---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs for
    address](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/address){website}
  - >-
    [MDN docs for
    bdi](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/bdi){website}
  - >-
    [MDN docs for
    bdo](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/bdo){website}
  - >-
    [MDN docs for
    cite](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/cite){website}

webSetupCode:
  startingHtml: |
    <!-- Add your code at the bottom under these directions. -->
    
    <!-- Please add the appropriate element to the correct sentence, located underneath. Elements to add are: cite, bdi, bdo and address. -->
  
    <p class="label">Your HTML:</p>

    <div class="your-code">
      <!-- Add your HTML to this text below. -->

    User:  ماثيو
    428 points.
      
    Dammit, I'm Mad!
      
      Apple Inc.
      1 Infinite Loop, Cupertino, California
      
      Find the best cat videos on
        https://youtube.com

    </p>


    </div>
  startingCss: |

  startingJs: |

---

# HTML citation elements

---

## Content

You have 4 elements and 4 sentences.  
Wrap each sentence in the correct element:  

- `<bdi>`  
- `<bdo>` (remember it needs a `dir` attribute)  
- `<cite>`  
- `<address>`  

If you're not sure which element to use, check the hints[1].

---

## Footnotes

[1: Hints]

- Use `<bdi>` for text that should be isolated from the surrounding text direction.  
- `<bdo>` forces a specific text direction. Add `dir="rtl"` to make the text display right-to-left.  
- `<cite>` is used for citing a reference, like a website or a creative work.  
- `<address>` is for contact or address information.  
