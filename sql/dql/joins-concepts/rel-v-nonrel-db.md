---
author: meridian

type: normal

category: deep-dive

tags:
  - introduction
  - joins
---

# Relational vs. Non-Relational

---

## Content

In many different situations, the data that we come across may have a predefined structure.
For example payroll data for a large company or a catalogue of different plants and their attributes.
In these examples there is an entry [1] for every employee, each having its own associated data and primary keys.

The majority of data available on the internet, however, has no structure. An often-seen example of this would be bulk text data[2]. 
Non-relational databases do not store a rigid system of tables, entries, primary or foreign keys. Instead, the structure of the database varies with the type of data being stored.

> 💡 Non-relational databases in detail are beyond the scope of this course, for a more in-depth explanation see this [article](https://www.pluralsight.com/blog/software-development/relational-vs-non-relational-databases)

---

## Practice

Non-relational databases are used to store data in tabular form. TRUE or FALSE?

- FALSE
- TRUE

---

## Revision

Relational databases store ??? data and non-relational databases store ??? data.

- tabular
- unstructured
- artificial
- irrelevant 

---

## Footnotes
[1: Rows and Entries]
In the context of a relational database, the terms **row** and **entry** can be used interchangeably. A single row or entry
corresponds to one instance of  measured data and each has a unique primary key in their respective tables.  
[2: Unstructured Data and Machine Learning] 
Unstructured data is typically subject to use with unsupervised or semi-supervised learning. Including clustering classification
algorithms. 
An example would be projects on sentiment analysis. Whereby a model uses a set of predefined sentiments to classify each body of text.
e.g. Is a certain review (written by a user) on the product a negative or positive review
