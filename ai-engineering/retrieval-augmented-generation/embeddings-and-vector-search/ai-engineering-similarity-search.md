---
author: enki-ai

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    # Welcome to the Python coding playground.
    # QUERY and DOCS hold made-up embedding vectors with 4 numbers each.
    # Real embeddings have hundreds or thousands of numbers.
    # Your task: make top_k rank the docs by cosine similarity to QUERY
    # and return the best k, highest score first.

    import math

    # Made-up vector for the question "How do I rotate an API key?"
    QUERY = [0.9, 0.1, 0.0, 0.2]

    # Made-up vectors for six docs pages, keyed by page title.
    DOCS = {
        "Rotate an API key": [0.8, 0.1, 0.0, 0.3],
        "Create an API key": [0.7, 0.2, 0.1, 0.1],
        "Revoke an API key": [0.7, 0.0, 0.1, 0.4],
        "Admin guide overview": [2.0, 1.8, 1.9, 1.5],
        "Export a dashboard": [0.1, 0.9, 0.1, 0.0],
        "Set data retention": [0.0, 0.1, 0.9, 0.2],
    }


    def score(a, b):
        # This is the dot product: multiply matching numbers, then add them up.
        return sum(x * y for x, y in zip(a, b))


    def top_k(query, docs, k):
        ranked = sorted(docs, key=lambda title: score(query, docs[title]), reverse=True)
        return [(title, score(query, docs[title])) for title in ranked[:k]]


    for title, s in top_k(QUERY, DOCS, 3):
        print(f"{s:.2f}  {title}")

---

# Similarity Search

---
## Content

> 👩‍💻 Your task is to make **`top_k` rank the docs by cosine similarity**, so the three best matches come first.

A docs Q&A bot searches with embeddings: vectors, or lists of numbers, that represent what text means.

`QUERY` holds a made-up vector for "How do I rotate an API key?", and `DOCS` holds made-up vectors for six docs pages.

The starter `score` uses the dot product, which grows with the size of the numbers as well as their direction. Run it, and you get:

```plain-text
2.28  Admin guide overview
0.79  Rotate an API key
0.71  Revoke an API key
```

"Admin guide overview" comes first only because its vector is about four times longer than any other.

Cosine similarity divides the dot product by the lengths of both vectors, so only direction counts. A score near 1 means two vectors point the same way.

When your version works, the loop prints this:

```plain-text
0.99  Rotate an API key
0.97  Create an API key
0.94  Revoke an API key
```

The three API key pages now lead, and the overview drops to fourth.

Some embedding models return vectors already scaled to length 1, and for those the dot product gives the same order as cosine similarity. These made-up vectors aren't scaled, which is why the starter ranking goes wrong.

To solve this, try using the following concepts:
- a vector's length (`math.sqrt(sum(x * x for x in v))`)
- the dot product (already in `score`)
- dividing by both lengths (`dot / (length_a * length_b)`)

Give it an honest try, and feel free to share your solution!

If you're stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---
## Footnotes

[1: Hints]

Run the starter code first. "Admin guide overview" tops the list with 2.28, which is the problem to fix.

A vector's length is the square root of the sum of its squared numbers. A small helper such as `length(v)` keeps `score` readable.

Cosine similarity is the dot product of `a` and `b`, divided by the length of `a` times the length of `b`.

`top_k` already sorts by `score` with the highest first, so fixing `score` fixes the ranking.
