---
author: Stefan-Stojanovic

type: normal

category: tip

---

# Pandas Profiling

---
## Content

Sometimes you might want to analyze a dataset but you don't have the time for it.

Or, you might wanna check if some of your analysis results are correct.

Luckily for us, there is `pandas profiling`.

`Pandas profiling` is an open-source module that we can use to perform analysis on a `DataFrame` in just a few lines of code.

To use it you first have to install it.

Open your terminal and write:
```py
# pip installation version 1
pip install -U pandas-profiling[notebook]
jupyter nbextension enable --py widgetsnbextension

# pip installation version 2
pip install https://github.com/pandas-profiling/pandas-profiling/archive/master.zip

# conda installation
conda env create -n pandas-profiling
conda activate pandas-profiling
conda install -c conda-forge pandas-profiling
```

After installing it you need to import it and then you can use it:
```py
from pandas_profiling import ProfileReport
```

The syntax to use it is:
```py
ProfileReport(df, title="Some Title Here")
```

If we used this on the `df` we made in the previous insight it would look like this:

Screenshot 1:
![overview](https://img.enkipro.com/23f31d4f4665f7c51e6ddb26b984420d.png)

Screenshot 2:
![variables](https://img.enkipro.com/e50a063c292f8be31adb72cfd803cef3.png)

Screenshot 3:
![first-last](https://img.enkipro.com/890da86d282cdd7ef61072b14ea0324c.png)

> If our dataset was larger, it would create numerous charts for us, determine missing values, show duplicate/missing rows/cells, it would also generate warnings, show correlations, and more.