# Execution Steps of AsyncTask
author: caren

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know

links:

  - '[AsyncTask](https://developer.android.com/reference/android/os/AsyncTask.html)'

---
## Content

There are four methods available in an AsyncTask to help handle manage the UI and background threads. 

1) `onPreExecute()` - First method to run on the UI thread when an AsyncTask is executed. It's usually used to update the UI to show a loading/progress bar and can also be a good place for performing setup tasks. 

2) `doInBackground(Params...)` - Most important method in an AsyncTask, as it's where the code for the long running task should live. This method takes optional parameters and runs immediately after onPreExecute() and the result is then passed to onPostExecute(Result).

3) `onProgressUpdate(Progress...)` - Runs on the UI thread while doInBackground() is still running. Most commonly used to update the progress bar on the UI.

4) `onPostExecute(Result)` - Last method that runs before an AsyncTask completes. It runs on the UI thread after doInBackground() returns a result. May be used for cleanup tasks and to notify the user about the completion of the task.

---
## Practice

What are all the methods involved in an AsyncTask?
???

* onPreExecute(), doInBackground(), onProgressUpdate(), onPostExecute()
* onPreExecute(), onExecute(), onPostExecute()
* onPreExecute(), onExecute(), onExecuteUpdate(), onPostExecute()

---
## Revision

Which method is used in an AsyncTask to execute long-running tasks?
???

* doInBackground()
* onExecute()
* onPreExecute()
* onPostExecute()
