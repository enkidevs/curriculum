# Histogram gotchas

author: claremarie

levels:

  - basic

type: normal

inAlgoPool: false

category: fundamental

tags:

  - statistics

stub: true

notes: 'this is a tidbit that won't have any questions'





---
## Content

Like many types of plots, histograms can be used (intentionally or not) to mislead or confuse the person viewing the histogram. Choosing an appropriate bin size, range, and even the placement of bin boundaries, is crucial to constructing a histogram that represents the data with as little bias as possible.

Consider the list of integers `[2, 3, 3, 3, 4, 4, 6, 8, 8, 9]`. The following are both accurate histograms of the data:

<!---
Find image at histogram-images.ipynb
-->

yet they tell very different stories. One seems to indicate a typical bimodal distribution with two peaks, a valley between, and tails on each extreme, while the other appears to have a U-shaped distribution. They have the same bin width (2), but one has segment boundaries at [0, 2), [2, 4), etc., while the other has boundaries at [1, 3), [3, 5), etc.

The takeaway here is that, because a histogram necessarily condenses information, you must be careful not to obscure important features of the dataset. This can be solved by creating and assessing multiple histograms with different parameters, as well as by considering other ways to visualize the data, such as boxplots and one-dimensional scatterplots.
