---
author: fahimrahman

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

aspects:

	- workout

tags:

  - time

  - timezone

links:

  - '[Class TimeZone](http://docs.oracle.com/javase/7/docs/api/java/util/TimeZone.html){website}'

---

# Getting Time Based on Time Zones

---
## Content

The `TimeZone` class can be used to retrieve the time zone of a particular location and can also figure out daylight savings. 

The `getDefault()` method can be used to get the time zone where the program is running.

The `getTimeZone()` method allows to get the time zone of a city using a time zone ID as follows:

```java
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TimeZone;


public class TimeZoneTest {

  public static void main(String[] args) {

  // Calendar object representing a time zone.
  Calendar cal = new GregorianCalendar(
    TimeZone.getTimeZone("America/New_York"));

  int hour = cal.get(Calendar.HOUR_OF_DAY);
  int minute = cal.get(Calendar.MINUTE);
  int second = cal.get(Calendar.SECOND);

  System.out.printf("Time in New York is:
     %02d:%02d:%02d", hour, minute, second);
	
  }
}

/*
Output: 
Time in New York is: 19:18:31
*/
```

---
## Practice

What method can be used to get the timezone of the location where the program is running?

`???`


* `TimeZone.getDefault()` 
* `TimeZone.getStandard()` 
* `TimeZone.getLocalTimeZone()` 
* `TimeZone.getTimeZone()`

---
## Revision

What library can be used to determine the timezone of a specific location, but also figure out daylight saving?

`???`


* `TimeZone` 
* `GregorianCalendar` 
* `Time` 
* `Timezone` 
* `Calendar` 
* `Date`
