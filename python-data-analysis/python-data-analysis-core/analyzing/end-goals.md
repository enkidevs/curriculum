---
author: Stefan-Stojanovic

type: normal

category: how-to

---

# End Goals?

---
## Content

First off, here's what we did in the previous workout[1].

To sum up, we determined which dataset we will use, which columns we will drop and we cleaned it up a bit.

This process is called **data wrangling[2]**.

The next step is to decide what we want to do with the information.

So, let's think of a few questions we would like to answer after analyzing this dataset.

What do we know?

We know that we have ratings, cast members, genre (`listed_in`), year of release, type of content, and the duration of it.

Here are some of the questions we can answer about this dataset:
- How many movies vs TV shows are there?
- How many ratings exist?
- How many movies vs TV shows of a specific ratings are there?
- and more[3].

---
## Footnotes

[1:Previous workout summary]
Here is all the code we have used in the previous workout:
```py
# Import pandas with the alias "pd"
import pandas as pd

# Create a DataFrame called "importedRawData". 
# Read an external CSV file called "netflix_title.csv" and save it into the DataFrame.
importedRawData = pd.read_csv('netflix_titles.csv')

# Get the Column & Row count
importedRawData.shape
# (6234, 12)

# We ran .head() and .tail() to see if everything loaded
importedRawData.head()
importedRawData.tail()
# it did

# Check which cells are empty
# True means empty while False means populated.
importedRawData.isnull()

# To not waste time counting all the missing fields, we attached a .sum() function to give us the sum of missing values
importedRawData.isnull().sum()
```
Which gave us this output:

| Column       | Missing Information |
|--------------|---------------------|
| show_id      |          0          |
| type         |          0          |
| title        |          0          |
| director     |         1969        |
| cast         |         570         |
| country      |         476         |
| date_added   |          11         |
| release_year |          0          |
| rating       |          10         |
| duration     |          0          |
| listed_in    |          0          |
| description  |          0          |

Next, we removed the columns we wont use in the analysis:
```py
# Remove columns we wont be using in this analysis
importedData = importedRawData.drop(
    columns=["show_id", 
             "description", 
             "country", 
             "date_added", 
             "director"
            ]
)
```

[2: Wrangling]
Data Wrangling is the process of collecting, selecting, and transforming data to answer an analytical question.

This process is very important and is present in every analysis. 

Before you can analyze any data, you will have to gather it, select the portions you need, remove the ones you don't, and transform others to your needs.

[3: Questions]
- Count of movies for each rating
- Count of TV shows for each rating
- In how many movies does a specific actor star in / movies per actor 
- How many movies/TV shows were released every year
- Total number of actors in movies and TV Shows
- Total number of actors that have X amount of movies/TV shows
- Which shows and movies have the longest duration
- How many genres are there
- How many movies of a specific genre are there
- Number of movies for all genres
