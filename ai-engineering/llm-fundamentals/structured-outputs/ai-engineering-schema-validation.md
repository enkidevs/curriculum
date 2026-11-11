---
author: enki-ai

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    # Welcome to the Python coding playground.
    # SIMULATED_LISTINGS holds five simulated model replies (not a live model),
    # already parsed from JSON, to one request: "Describe this product as JSON."
    # Your task: make check_listing return a list of problems for a listing
    # with a missing field, an extra field, or a field of the wrong type.

    # The fields your store's listing page reads, and the type of each.
    SCHEMA = {"title": str, "bullets": list, "category": str}

    SIMULATED_LISTINGS = [
        {"title": "Bamboo Board", "bullets": ["Hand wash"], "category": "kitchen"},
        {"title": "Bamboo Board", "bullets": ["Hand wash"]},
        {"title": "Bamboo Board", "bullets": ["Hand wash"], "category": "kitchen",
         "price": 24},
        {"title": "Bamboo Board", "bullets": "Hand wash", "category": "kitchen"},
        {"title": "Large Bamboo Board", "bullets": ["Juice groove", "Hand wash"],
         "category": "kitchen"},
    ]


    def check_listing(listing):
        # This accepts every listing.
        return []


    for listing in SIMULATED_LISTINGS:
        problems = check_listing(listing)
        if problems:
            print("rejected:", "; ".join(problems))
        else:
            print("published:", listing["title"])

---

# Schema Validation

---
## Content

> 👩‍💻 Your task is to make **`check_listing` reject every listing that breaks `SCHEMA`**.

Your online store asks a model to describe each product as JSON. The listing page reads three fields: a `title` string, a `bullets` list, and a `category` string. `SCHEMA` holds those fields and their types.

`SIMULATED_LISTINGS` holds five simulated replies, already parsed from JSON. The starter `check_listing` accepts everything, so all five get published.

Three of them shouldn't be. One has no `category`, so the product shows up in no menu. One adds a `price` the model made up. One sends `bullets` as a single string, and a page that loops over it shows one bullet per character.

When your version works, the loop prints this:

```plain-text
published: Bamboo Board
rejected: missing field: category
rejected: unexpected field: price
rejected: wrong type: bullets
published: Large Bamboo Board
```

The first and last listings match the schema, so they're published. Each of the middle three breaks one rule, and the message names it, so your app can log it or retry.

To solve this, try using the following concepts:
- finding a missing field (`field not in listing`)
- finding an extra field (`for key in listing`)
- checking a value's type (`isinstance(listing[field], SCHEMA[field])`)
- collecting problems in a list (`problems.append(...)`)

Give it an honest try, and feel free to share your solution!

If you're stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---
## Footnotes

[1: Hints]

Run the starter code first. All five listings print `published`, which is the problem to fix.

Missing and extra fields need two separate loops. Loop over `SCHEMA` to find fields the listing lacks, then loop over the listing to find keys `SCHEMA` doesn't have.

Check a field's type only if the field is there. Otherwise `listing[field]` raises a `KeyError` on the second listing.

Build the message with an f-string, such as `f"missing field: {field}"`, so it matches the expected output.
