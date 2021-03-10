---
author: Stefan-Stojanovic

type: normal

category: how-to

links:
  - >-
    [Markdown Guide](https://www.markdownguide.org/basic-syntax/){website}

---

# Creating Your First Notebook

---
## Content

Open your terminal and type `jupyter-lab` if yo installed the application locally or go to [their website](https://jupyter.org/try) to open the online version.

Next, to create a new notebook go to `File - > New -> Notebook`.

This will give you an empty notebook with a single empty cell.

At the top, you can choose what kind of cell this will be. There are two types; `Code` and `Text/Markdown` cells.

`Code` is used for any code you want to write and run.

`Text/Markdown` is used for adding text as well as elements like headers, paragraphs, and others.

![preview](https://img.enkipro.com/a743a2d759e62869f69789dc28eb9e70.png)

The first two cells are `Text/Markdown` cells. The first one is not executed (it contains markdown), while the second one is executed (its contains resulting text).

> 💡 To learn more about markdown, check the *Learn More* section.

The third cell is a `Code` cell. The `[1]:` to the left of it means that it was the first `Code` cell that was executed. This cell prints `Hello World` to the console, which is shown underneath it.

The final two cells both have a `[2]:` before them. 

The first `[2]` is shown because that was the second `Code` line that was executed. The next `[2]` is shown because it matches the output of the previous cell. We returned the variable `x` and it resulting output is `"Hello World"`.

Any `Code` cell that returns something will have a matching cell after it with the same number.

> 💡 The cell numbers don't have to be in order! If you run the same cell again or run a different cell, the number will increase.

Next, save the notebook.

> ℹ️ We will be using the same notebook in the next few workouts to import and analyze a dataset.
