---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Escape the reply for HTML before inserting it, so any tags in it display as text.
    requiredConcepts:
      - HTML-escape or encode the reply before inserting it into the page.
    acceptedAnswers:
      - Run it through html.escape first.
      - Escape <, >, and quotes before rendering it.
      - Encode it for HTML so tags show as text.
    hints:
      - What happens if the reply contains a tag?
      - Who wrote the text the model may have copied?
    tooVagueExamples:
      - Sanitize it.
      - Check it.
    incorrectExamples:
      - Validate it against the JSON schema.
      - Tell the model never to output HTML.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: The page shows the tag as plain characters, so there is no working link to click.
    requiredConcepts:
      - The tag shows as plain text, or nothing is clickable.
    acceptedAnswers:
      - The tag as plain text, with no clickable link.
      - The raw characters of the link, not a link.
      - Text that looks like HTML, but nothing you can click.
    hints:
      - What does html.escape turn the < into?
      - Does the browser still see a tag?
    tooVagueExamples:
      - Something safe.
      - The reply.
    incorrectExamples:
      - A working "Pay here" link.
      - An empty space where the link was removed.

---

# Output Handling

---
## Content

Model output can repeat any text the model read, including text an attacker wrote.

So before your code sends output on to a web page, a database query, or a shell command, it makes the output safe for that place. That's called output handling.

Plover shows its billing assistant's replies on a web page. Someone slipped a link tag into an invoice note, and the model copied it into this reply, stored as `reply`:

```plain-text
Paid in full. <a href="https://plover-pay.example">Update your card</a>
```

**🚫 Unsafe**
```python
html_out = '<div class="reply">' + reply + '</div>'
```

Inserted as-is, that becomes a real "Update your card" link on Plover's own page. It leads to a lookalike site that collects card numbers.

**✅ Safe**
```python
import html
html_out = '<div class="reply">' + html.escape(reply) + '</div>'
```

The only change is `html.escape`, which turns `<` into `&lt;` and quotes into `&quot;`.

Here's the `html_out` it produces:

```plain-text
<div class="reply">Paid in full. &lt;a href=&quot;https://plover-pay.example&quot;&gt;Update your card&lt;/a&gt;</div>
```

**The browser shows those codes as the characters themselves, so the page displays the tag as plain text and nothing is clickable.**

---
## Practice

Your app inserts a model's reply into a web page as HTML. What should your code do first?

???

- Escape it, so any tags in it display as plain text.

---
## Revision

A model reply containing `<a href="https://pay.example">Pay here</a>` is escaped before your page shows it. What does the page display?

???

- The tag as plain text, with nothing to click.
