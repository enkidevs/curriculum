# AsyncTask Limitations and Gotchas
author: caren

levels:

  - basic

  - medium

  - advanced

type: normal

category: best practice

---
## Content

While AsyncTask makes it easy for developers to run background threads, there are a few common pitfalls. When implementing AsyncTasks, you should always be aware of these limitations in order to prevent causing memory leaks in your application.

The first thing to remember is that AsyncTask is bound to the Activity in which it was created. This means that when the Activity is destroyed, the AsyncTask loses its reference to that original activity. Thus it will not be able to update the UI upon completion of its background task. A common example of this is when the screen orientation changes and causes the Activity to be destroyed. This leaves an orphan AsyncTask that is still running in the background with nothing to update upon completion.

Another pitfall of AsyncTask is how it manages its lifecycle. The only way to stop a running AsyncTask is by manually calling AsyncTask.cancel(). However, calling cancel() does not always guarantee that the task will stop due to the way Android handles uninterruptable Threads. In this scenario the best practice solution is to periodically check the value returned by isCancelled() in doInbackground(). If isCancelled() returns true, you can manually do the necessary cleanup to ensure that the AysncTask stops running.

## Practice

What happens when you call AsyncTask.cancel()?
???

* The task will sometimes stop running.
* The task will always stop running immediately.
* The task will stop running in 1 second.

---
## Revision

What happens when the Activity that created the AsyncTask is destroyed?
???

* The AsyncTask becomes orphaned and cannot update the UI
* The AsyncTask is recreated automatically when the Activity is recreated
* THe AsyncTask automatically stops itself immediately
