---
author: Stefan-Stojanovic

type: normal

category: how-to

---

# Computing Group Sizes.

---
## Content

Now that we have `moviePerActor` and `tvshowPerActor`, we can use them to count how many actors have a specific number of movies/shows.

### Movies

```py
# Group by Sum of Movies
# count rows
# transform to DataFrame
# new column named "Actors"
# sort values in descending order by new column
moviePerActor.groupby("Sum of Movies")\
    .size()\
    .reset_index(name="Actors")\
    .sort_values("Actors",ascending=False)
```

The output looks like this:

![movie-per-actor](https://img.enkipro.com/715b109ee5c3549bf2ab8104509f6031.png)

### TV Shows

```py
tvshowPerActor.groupby("Sum of TV Shows")\
    .size()\
    .reset_index(name="Actors")\
    .sort_values("Actors",ascending=False)
```
Gives this output:

![show-per-actor](https://img.enkipro.com/69d1e2673e1b43ea2cf95ffb52b11fb8.png)

Using this information we can determine that over 10,000 actors have starred in 1 movie, but only 1 has starred in 32.

Same for shows; 9484 actors have starred in 1 show and only 1 in 18.

> Here is all the work we have done so far in a notebook:

[Google Collab Notebook](https://colab.research.google.com/drive/14jMcJjW5iu6vf2_oQDPEm3oi5jzWuPOj?usp=sharing)