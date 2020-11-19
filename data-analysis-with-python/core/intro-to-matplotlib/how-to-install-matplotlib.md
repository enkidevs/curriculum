---
author: Stefan-Stojanovic

type: normal

category: how to

---

# How to install matplotlib?

---
## Content

There are two ways to install `matplotlib`.

Installing through `pip`:
```python
python -m pip install -U matplotlib
```

> If you already have `matplotlib` installed, the above code will uninstall an older version and install the newest stable release.


Installing through `conda`:

```python
conda install -c conda-forge matplotlib
```

As with `numpy` and `pandas` we will add the `matplotlib` import to the `startup.py` file we created a few workouts ago.

Go to the `.Ipython` file located at `C:\Users\YOUR_USERNAME\.ipython\profile_default\startup` as before, open the `startup.py` and write:

```python
import matplotlib as mpl
```

This way, we can use the `matplotlib` library through the `mpl` keyword.

> In the future, we will be coming back to the `startup.py` file to modify our imports.