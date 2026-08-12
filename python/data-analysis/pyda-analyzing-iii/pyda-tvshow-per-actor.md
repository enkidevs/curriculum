---
author: Stefan-Stojanovic

type: normal

category: how-to

---

# Total Number Of TV Show Actors 

---
## Content

The process for TV show actors is exactly the same:

```py
splitTVShowCast = tvshowCast.set_index('type')\
  .cast.str.split(', ', expand=True)\
  .stack()\
  .reset_index('type')\
  .rename(columns={0:'Actor'})\
  .sort_values('Actor')[['Actor', 'type']]\
  .reset_index(drop=True)
```

Which gives this output:

![split-tvshow-cast](https://img.enkipro.com/4af36d03ef84957b3b3e270984900c35.png)

Then we group and sort again:

```py
tvshowPerActor = splitTVShowCast\
  .groupby('Actor')\
  .size()\
  .sort_values(ascending=False)\
  .reset_index(name='Sum of TV Shows')

# Call
tvshowPerActor
```

And get this output:

![tvshow-per-actor](https://img.enkipro.com/cc41ead80e14bd00ae6342f1b49b5d8b.png)
