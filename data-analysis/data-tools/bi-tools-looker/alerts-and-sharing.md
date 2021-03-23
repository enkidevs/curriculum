---
author: emmab
tags:
  - introduction
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Alerts and Sharing Reports


---

## Content

You can configure **alerts** for particular events. 

Imagine that you work for an e-commerce company and you want to know as soon as an item receives 20 returns.

By clicking on the gear icon > Schedule, you can set up multiple different types of alerts, including emails and webhooks[1]!

These can be super useful for spotting problems as you don't want to be checking your data continuosly.

You can also **share your data** in different ways depending on how often you want it sent.

If you want to share your data **once**, then you can either *send a snapshot in time* by **Downloading and sending the data** (PDF or CSV), or you can **share the URL** for *live information*.

If you want the data shared **repeatedly**, then you can schedule it to *send a snapshot of the data on a regular basis*. There are loads of configurable options and multiple email addresses can be added. 


---

## Practice

How can you check whether a particular event, such as orders reaching 1000 each day, using Looker?

???

- Alerts
- Dashboards
- Sharing
- Notifications


---

## Revision

How can you check whether a particular event, such as items per delivery reaching 20 per driver, using Looker?

???

- Alerts
- Dashboards
- Sharing
- Notifications


---

## Footnotes

[1:Webhooks]

A webhook, often called a reversed API, just sends the data when it’s available.

To use a webhook, you register a URL with the company providing the service. That URL is a place within your application that will accept the data and do something with it. 

In some cases, you can tell the provider the situations when you’d like to receive data. Whenever there’s something new, the webhook will send it to your URL.
