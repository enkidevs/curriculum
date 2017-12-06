# Implementing and Executing AysncTask
author: caren

levels:

  - beginner

  - basic

  - medium

type: normal

category: how to

---
## Content

AsyncTask is an abstract class, which means in order to use it we must create our own subclass of it. `doInBackground(Params)` is the only method that must be implemented (`onProgressUpdate(Progress)`, `onPostExecute(Result)`, and `onPreExecute()` are all optional).

Below is an example of a custom AsyncTask to make a network call. In this example our main task is to make a network request. We also show a loading icon while the request is running and display an error dialog if the request fails.

```
class MyTask extends 
    AsyncTask<String, Integer, Boolean> {

    protected void onPreExecute() {
        showLoadingIcon();
    }

    protected Boolean doInBackground
            (String... url) {
        boolean requestSucceed = 
            makeNetworkRequest(url[0]);
        if (requestSucceeded) {
            return true;
        } else {
            return false;
        }
    }

    protected void onPostExecute
            (Boolean success) {
        if (success) {
            hideLoadingIcon();
        } else {
            showErrorDialog();
        }
    }
}
```

With our AsyncTask defined and implemented, we can now make make network requests as such : 
```
new MyTask().execute("http://google.com");
```


---
## Practice

What is the order of methods that are called when an AsyncTask is executed??
???

* onPreExecute(), doInBackground(), onPostExecute()
* doInBackground(), onPreExecute(), onPostExecute()
* onPreExecute(), onPostExecute(), doInBackground()

---
## Revision

Which method(s) must be implemented when subclassing AsyncTask?
???

* doInBackground()
* doInBackground(), onPostExecute()
* onPreExecute(), onPostExecute()
