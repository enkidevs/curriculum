# Android's Threading Model
author: caren

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know

links:

  - '[AsyncTask API Documentation](https://developer.android.com/reference/android/os/AsyncTask.html)'
  - '[Processes and Threads on Android](https://developer.android.com/guide/components/processes-and-threads.html)'

---
## Content

Every time an Android application is launched, the system creates a "main" thread for the app to execute tasks. This main thread is what allows the application to interact with Android's UI, and thus it is often referred to as the **UI thread**.

When an user interaction requires extensive work to be done (such as fetching data from the network), this single-thread model can cause a non-responsive UI if not implemented correctly. This is because waiting for a network request to complete means the main thread is blocked. Thus, further events such as displaying a loading icon cannot be handled, making the app appear as if it had froze.

To maximize the responsiveness of an Android app's UI, you should never block the UI thread. Tasks that will not complete instantaneously should be done in separate 'background' or 'worker' threads. The UI itself should also always be updated on the UI thread to maintain a thread-safe model.

**AysncTask** is common way to offload heavy tasks to a worker thread and then use the results to render the UI. It's a designed to be a helper class and easy to use because it doesn't require manipulating threads and handlers. However, it should only be used for tasks that will complete within a few seconds because it is poorly tied to Android's activity lifecycle and as a result can easily cause memory leaks.

---
## Practice

AsyncTask is useful in Android because...
???

* It can do heavy tasks on a worker thread and pass it to the main UI thread
* It can make network calls and let the Android system handle the edge cases
* It can render the UI faster on Android


---
## Revision

The Android system creates how many threads for each running application?
???

* 1
* 5
* 10
