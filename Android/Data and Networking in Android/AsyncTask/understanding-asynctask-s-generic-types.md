# Understanding AsyncTask&#39;s Generic Types
author: caren

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know

links:

  - '[link to learn more](https://enki.com)'

---
## Content

When you implement an AsyncTask subclass, you must pass in three generic types to specify the different properties of the AsyncTask.

Recall that a typical AysncTask looks like the following:

```
class MyTask extends 
    AsyncTask<String, Integer, Boolean> {
   ... 
}
```

Notice the three paramaters `<String, Integer, Boolean>`. The first parameter specifies the type that's passed when you call `new MyTask().execute(String);` . The second parameter specifies the type that is used to track progress `onProgressUpdate(Integer);`. The third and last paramater specifies what doInBackground() will return `Boolean doInBackground(String... url)`.

For example `AsyncTask<String, Integer, Boolean>` indicates that this task will take in an String input, publish progress with Integer values and return a Boolean to onPostExecute() after doInBackground() finishes executing.

Not all types need to be specified and used. If a type is not needed, you can indicate that parameter with the type Void. For example, if we were to change our first example to : `AsyncTask<String, Integer, Void>`, our task would now be expected to not have a return value from doInBackground() and our onPostExecute() would not expect a parameter input.


---
## Practice

If an AsyncTask was defined as such: `AsyncTask<String, Integer, Boolean>` , what kind of input would need to be passed when executing the task?
???

* String
* Integer
* Boolean

---
## Revision

What does the third parameter indicate in an AsyncTask defined as such: `AsyncTask<String, Integer, Boolean>`?
???

* doInBackground() will return a Boolean and onPostExecute() will take in a Boolean
* doInBackground() will return a Boolean 
* AysncTask.execute() will return a Boolean
