---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - deep
  
link:
  - https://developer.mozilla.org/en-US/docs/Web/HTML/Element/kbd
  
---
# Intro kbd
---
## Content

In HTML the `<kbd>` element is used to represent user input. This can be via a keyboard, voice commands or any other textual input.

**Note:**
  - **kbd stands for Keyboard Input Element.**
  - **Both the starting and ending tags are necessary.**

Example:
```
<p>
  Press the button 
  <kbd>play again</kbd>
  to continue playing.
</p>
```

Result:<br>
Press the button <kbd>play again</kbd> to continue playing.
 
In the example above, the `<kbd>` element is used to produce an inline element representing user input.

The default font style for the `<kbd>` element for most browsers is the monospace font.

You can nest the `<kbd>` element either with itself or a different element for different representations.

Example 1:
```
<p>
  <kbd>
    Copy the document by pressing 
    <kbd>Ctrl</kbd> + 
    <kbd>C</kbd>`
  </kbd>
</p>
```
Result:<br>
<kbd> 
  Copy the document by pressing 
  <kbd>Ctrl</kbd> + <kbd>C</kbd> 
</kbd>

Example 2:
```
<p>
  To paste, press
   <samp>
    <kbd>Ctrl</kbd> +
   </samp>
   <samp>
    <kbd>V</kbd>
   </samp>
</p>
```
Result:<br>
<p>
  To paste, press
   <samp>
    <kbd>Ctrl</kbd> +
   </samp>
   <samp>
    <kbd>V</kbd>
   </samp>
</p>

Example 3:
```
<p>
  If you wish to undo, press
   <kbd>
    <samp>Ctrl</samp> +
   </kbd>
   <kbd>
    <samp>Z</samp>
   </kbd>
</p>
```
Result:<br>
<p>
  If you wish to undo, press
   <kbd>
    <samp>Ctrl</samp> +
   </kbd>
   <kbd>
    <samp>Z</samp>
   </kbd>
</p>

In the first example, we have two `<kbd>` elements nested inside another `<kbd>` element. Nesting `<kbd>` with itself represents a key or a keystroke. 

In the second example, we have the `<kbd>` element nested inside the `<samp>` element. When nesting inside `<samp>`, it represents input echoed by the system. 

And in the third example, we have a `<samp>` element nested inside a `<kbd>` element. This represents input based on system output. Like a menu item.

---
## Practice

When using the `<kbd>` element, which statements are true?

???
???
???
???

* represents user input
* displayed in the browser's default monospace font 
* when nested inside `<samp>`, represents input echoed by the system. 
* when containing `<samp>`, represents input based on system output.
* produces a block element
* represents preformatted text
* represents sample output

---
## Revision

What HTML element wraps around keyboard names to display the text differently than the surrounding text?

???

* kbd
* key
* keyboard
* k
* kb
* kn

---
## Quiz

### Can you answer this question about `<kbd>` elements?

What does the tag `<kbd>` do here?

`<p>`Save the document by pressing `<kbd>`Ctrl`</kbd>` + `<kbd>`S`</kbd>``</p>`

???

* Produces inline element representing user input.
* Produces block element representing user input.
* Produces preformatted text representing user input.
* Produces sample output representing user input. 


