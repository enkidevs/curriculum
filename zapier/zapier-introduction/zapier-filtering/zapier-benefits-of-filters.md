---
author: kapnobatai136
category: tip
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Why Use Filters?


---

## Content

When working with simple zaps, you might not even need to include filters in your flow. As the size of the zaps increase, and the size of the data you are working with (e.g. production database), the necessity of filters may become apparent.

Let's take another look at a filter step:

![filter-setup-and-testing](https://img.enkipro.com/25eaef765da3856792a1ae9f92ddfea3.png)

Notice the `+AND` and `+OR` buttons in the bottom left corner. What these do is add another check (the one we have now says that the `Has Access?` column must contain the `Yes` value), and depending on the type:

- `+AND` - both checks must pass **at the same time**
- `+OR` - **at least one** of the checks must pass

This feature give us a lot of power to by allowing us to adjust various logic into a zap.


---

## Practice

Match the type with its description:

```plain-text
+AND - ???
+OR  - ???
```

- both checks must pass
- at least one check must pass


---

## Revision

When filtering, which type do you have to use such that both checks must pass at the same time?

???

- +AND
- +OR
