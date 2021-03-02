---
author: meridian

type: normal

category: pattern

links:
  - >-
    [Relational vs. Non-Relational 
    Databases]
    (https://www.pluralsight.com/blog/software-development/relational-vs-non-relational-databases){article}

tags:
  - introduction
  - joins

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Relational vs. Non-Relational

---

## Content

In many different situations, the data that we come across may have a predefined structure.
For example payroll data for a large company or a catalogue of different plants and their attributes.
In these examples there is an entry[1] for every employee, each having its own associated data and primary keys.

The majority of data available on the internet, however, has little or no structure. An often-seen example of this would be bulk text data[2]. 
Non-relational databases do not store a rigid system of tables, entries, primary or foreign keys. Instead, the structure of the database varies with the type of data being stored.

Here is an example of what different entries in a non-relational database might look like:

![non-relational example](https://img.enkipro.com/463523464e45f58781f33ab42485a64a.png)

This is just one type of database[3].

> 💡 Non-relational databases in detail are beyond the scope of this course, for a more in-depth explanation see the *Learn More* section.

---

## Practice

Relational databases are used to store data in tabular form. TRUE or FALSE?

???

- TRUE
- FALSE

---

## Revision

Below are sections from two different databases. Which one is relational?

**Option 1**
![option 1](https://img.enkipro.com/dc11b78fad84b3006ef092b2c9840514.png)

**Option 2**
![option 2](https://img.enkipro.com/4e0f840162b031928bb7c97d4ce6631b.png)

???

- Option 1
- Option 2

---

## Footnotes
[1:Rows and Entries]
In the context of a relational database, the terms **row** and **entry** can be used interchangeably. A single row or entry
corresponds to one instance of measured data and each has a unique primary key in their respective tables.  
[2:Unstructured Data and Machine Learning] 
Unstructured data is typically subject to use with unsupervised or semi-supervised learning. Including clustering classification
algorithms. 
An example would be projects on sentiment analysis. Whereby a model uses a set of predefined sentiments to classify each body of text.
e.g. Is a certain review (written by a user) on the product a negative or positive review
[3:Key-Value Database]
This type of non-relational database is specifically referred to as a key-value (or in this case key-document) database.