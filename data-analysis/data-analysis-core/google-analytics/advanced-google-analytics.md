---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - >-
    [Advanced Google
    Analytics](https://analytics.google.com/analytics/academy/course/7/unit/1/lesson/1){website}
  - >-
    [Google Analytics Top
    Tips](https://neilpatel.com/blog/google-analytics-tips/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Advanced Google Analytics


---

## Content

### Hits and Sessions

With each user interaction on your website, the Analytics tracking code automatically sends what’s called a “hit” to Google Analytics. A “hit” is a URL string with parameters of useful information about your users.

The three most common types of hits are:

1. **“Pageview” hits**
   When a user loads a webpage with the tracking code.
2. **“Event” hits**
   When a user interacts with a particular element on your website.
3. **“Transaction” hits**
   Can pass data to Analytics about ecommerce purchases such as products purchased, transaction IDs, and “stock keeping units” (SKUs).

> 💡 Setting up **Enhanced Ecommerce** allows you to pass additional ecommerce data like product category, whether items have been added or removed from a shopping cart, and how many times users viewed a product.

Hits are then categorized into **sessions**[1] - periods of time when the user engaged with the site. 

Sessions are then used to create the key metrics **Pages / Session**, **Avg. Session Duration** and **Bounce Rate**. 

## Custom Metrics and Dimensions

**Custom metrics and dimensions** can also be configured, and require a new piece of JavaScript code to be added into your webpages. 

Let's take a look at an example of when custom metrics and dimensions are useful.

Imagine a game developer has recently released a new game. 👾

The developer already knows how many times each level has been played. Now they want to answer these more advanced questions:

1. How many times are easy levels played versus medium or hard levels?
2. How many levels are played for each day in a 3-day free trial?
3. How many levels are played by users in the trial versus users who have paid for the game?

To answer these questions, custom dimensions are used to create new groupings of **hits**, **sessions**, and **users**.

Read this article for more info on [custom metrics and dimensions](https://support.google.com/analytics/answer/2709828).

And check out the **Learn More** link for over 20 top Google Analytics tips!


---

## Practice

What does Google Analytics call a URL that passes data parameters for reporting?

A ???

- hit
- tag
- dimension
- metric


---

## Revision

When does the Google Analytics tracking code send a **pageview hit** to Analytics?

Every time a user ???

- loads a webpage
- clicks a video
- adds an item to a shopping cart
- performs a search on a website


---

## Footnotes

[1:Session]
A session begins when a user navigates to a page that includes the GA tracking code and generates a pageview hit.

It will end after 30 minutes if no other hits are recorded. If a user returns to a page after a session ends, a new session will begin.

While sessions time out after thirty minutes of inactivity by default, you can change this setting in your configurations to better align with user behavior on your site. For example, a site with a goal to get users to watch videos may not want sessions to timeout after thirty minutes. They can extend session timeout to the average watch time of the videos on the site.
