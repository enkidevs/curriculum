# how-to-add-drawables
	author: tlawson

	levels:

	  - beginner

	  - basic

	type: normal

	category: how to

	links:

	  - '[link to learn more](https://enki.com)'

	---
	## Content

Drawables can get directly accessed in XML via @drawable/filename where filename is the filename without the file extension. 

There are two ways you access a resource:
* **In code**: You can use a resource in code by passing the resource ID as a method parameter. An example, you can set ImageView to use       res/drawable/hellome.png using setImageResource():

	Below is the following snippet:

	ImageView imageView = (ImageView) findViewById(R.id.myimageview);
	imageView.setImageResource(R.drawable.hellome);

* **In XML**: You can define values for some XML attributes and elements using a reference to an existing resource. This will be done by
    creating layout files that supplies strings and images for your widget. The following snippet shows if you add a button to your
    layout, a string resource can be used for the button text. 


	<Button
    		android:layout_width="fill_parent"
    		android:layout_height="wrap_content"
    		android:text="@string/Hello" />

	---
	## Practice

	How do you access a drawable?
	???

	* use @drawable/filename
	* use @drawable/filename and extension
	* use @app/filename

	---
	## Revision

	Filename is the filename?
	???

	* without the file extension
	* with the file extension
	* can be either file extension or no extension

