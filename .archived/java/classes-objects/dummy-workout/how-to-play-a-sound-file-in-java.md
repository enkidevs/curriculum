---
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

notes: ''

links:

  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/22031701/sun-audio-player-and-sound-i-o){website}

---
# How to play a sound file in Java

---
## Content

Playing simple audio file in Java can be handled by the Library `sun.audio`:

```java
import sun.audio.*;

public class AudioExample{
  String mFile = "/Users/music.au";
  InputStream in = 
      new FileInputStream(mFile);
  AudioStream as = 
      new AudioStream(in);
  AudioPlayer.player.start(as);
}
```

---
## Practice

Using the `sun.audio` library,  play the file referred by the `au AudioStream`:
```
// AudioStream au
???.player.???(au);
```
*`AudioPlayer` 
*`start` 
*`play` 
*`music` 
*`Play` 
*`Audio`

---
## Revision

Complete the code snippet such that the `AudioStream` au is played:
```
AudioPlayer.???.???(au);
```
*`player`
*`start`
*`audio`
*`play`
*`music`
*`stream`