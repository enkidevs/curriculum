---
author: adamMontgomerie

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

inAlgoPool: false

tags:

  - exceptions

  - strings


links:

  - '[www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=78){website}'


---
## Content
# Converting stack trace to a string

To store stack trace as a string, you can use `Throwable.printStackTrace(...)`  
For example:

```java
public static String getStackTrace(
  Throwable throwable
){
  Writer result = new StringWriter();
  PrintWriter printWriter = 
    new PrintWriter(result);
  throwable.printStackTrace(printWriter);
  return result.toString();
}
```

In the above example, `getStackTrace` takes a `Throwable` as a parameter and uses `printStackTrace` to print it to a `PrintWriter` output stream. This output is collected by the `StringWriter` and converted to a string using `StringWriter.toString()`.

