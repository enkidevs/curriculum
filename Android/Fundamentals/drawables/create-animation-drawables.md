# create-animation-drawables
author: tlawson

levels:

  - beginner

type: normal

category: how to

links:

  - '[link to learn more](https://enki.com)'

---
## Content

Android offers to developers a great Animation API that lets them to create easily frame animation in XML or programmatically. In the section, learn how to create a frame animation in XML. For this, we’re going to use a lion character that we want to animate.

1. Create the frames of the lion animation. 
2. Create the animation using an XML file. 
When your Android application project is created, you need to put the bitmaps in a res/drawable directory. Then, you can create the Animation in XML like the following below:

```

```

Inside the animation-list tag, we define each frame based on item. Each item has a reference to a drawable that represents a frame, and also a duration in milliseconds. We choose to declare each frame for the lion fr om 1 to 6 with a 200 milliseconds as duration.

3. Create the layout. 
Layout of the Android applications is very simple using the RelativeLayout with an ImageView inside. Define the animation as a background for the ImageView like the following below:

```


</RelativeLayout>

```
4. Run the animation. 
To use the animation in this activity, you need to set the layout and to get an instance to the ImageView. Post a Runnable on the instance in which to get the background of the image and call the start method of the AnimationDrawable associated: 

```
   
```

---
## Practice

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2

---
## Revision

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2
