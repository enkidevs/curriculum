---
author: fahimrahman

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - date-and-time

  - calender

  - ''

links:

  - >-
    [www.mkyong.com](http://www.mkyong.com/java/java-how-to-get-current-date-time-date-and-calender/){website}

---
# Read system's current date and time

---
## Content

The current date and time can be accessed with the `Date` class. Use the `SimpleDateFormat` class to convert the date into any preferable format.
```
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class ReadDateTime {

  DateFormat dateFormat = 
    new SimpleDateFormat(
    "dd/MM/yyyy HH:mm:ss");

  Date date = new Date();
  System.out.println(
    dateFormat.format(date)); 
}
```
Alternatively, the `Calender` class can be used instead of the `Date` class:
```  
Calendar calender = Calendar.getInstance();
System.out.println(
dateFormat.format(calender.getTime()));  

```
 
