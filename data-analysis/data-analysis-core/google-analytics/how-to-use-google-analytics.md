---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - >-
    [Google Analytics for
    Beginners](https://analytics.google.com/analytics/academy/course/6){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# How to use Google Analytics


---

## Content

Google Analytics is a widely used and powerful tool, especially for Marketing and Product teams.

Let's look at how it *actually works*.

Google Analytics is a platform that **collects data** and **compiles it into useful reports**. 

In order to use it, you must first have a **Google Analytics account** and then you need to add an **Analytics tracking code**[1] to each page of your site that you want to track.

> 💡 Big tip: don't just let anyone create your website's Google Analytics account under their own account so they can "manage" it for you. If you and this person part ways, they will take your Google Analytics data with them, and you'll have to start all over.

A Google Analytics account has the following hierarchical structure:

1. **Account**
   Usually this is just your company.
2. **Property**
   Your website, webapp, mobile app. You can track as many different properties you like.
3. **View**
   You can create either predetermined or custom (filtered) views for each property.

> 💡 Here is an important rule of thumb: always create at least three Google Analytics views in your account:

- Master View
- Test View
- Raw Data View

![Google Analytics View](https://img.enkipro.com/7d27fe5d951cb55b3721854bd65a768a.png)

The Master View is your working view. It means that you can apply many different filters to get the most accurate and actionable data in your view.

The Test View is where you test all of your filters first. You could always skip testing a filter, but even experienced users should refrain from doing this.

The Raw Data View is an untouched view where you don’t apply any modifications (like filters) that alter the data collection process. This view allows you to always go back if anything goes wrong in your working view(s).

> 💡 Google allows you to set up 25 views on one property so make sure to use them wisely!

Let's explore the UI more closely next!


---

## Practice

To collect data using Google Analytics, which steps must be completed?

1. ???
2. ???

- Create an Analytics account
- Add Analytics tracking code to each webpage
- Install Google Analytics desktop software
- Download the Analytics app


---

## Revision

The Analytics tracking code can collect which of the following?

???

- Device and operating system
- User’s favorite website
- User's browsing history


---

## Footnotes

[1:Analytics Tracking Code]
This is a small piece of JavaScript code that needs to be added immediately after the opening `<head>` tag on every webpage that you want to track.

To locate a property's Analytics tracking code you need to follow these steps:
Admin > Tracking Info > Tracking Code
