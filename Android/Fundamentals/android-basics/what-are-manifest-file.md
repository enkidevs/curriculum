# what-is-android-manifest-file
author: tlawson

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[What is an Android Manifest File](https://javapapers.com/android/android-manifest/)'

---
## Content

The Manifest file is a resource file which contains all the details needed by the android system about the application. It helps to pass on the functionality and requirements of our application to Android. The xml file is the AndroidManifest.xml and placed at the application root.  Below is a screenshot. 

```
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android=
"http://schemas.android.com/apk/res/android"
    package="com.example.tammy.helloworld">
    
    <application
        android:allowBackup="true" 
        android:icon="@mipmap/ic_launcher"
        android:label="@string/app_name"
        
        
    </application>

    

</manifest>
```

Among other things, the manifest does the following:
*	Names the java package for the application. The package name serves as a unique identifier for the application. 
*	Describes the components of the application – the activities, services, broadcast receivers, and content providers that the
  application is composed of. 
*	Determines which process will host application components
*	Declares which permissions the application must have in order to access protected parts of the API
*	Declares minimum level of the Android API that the application requires.
*	List libraries that the application must be linked against. 


---
## Practice

What of the following statements about the Manifest file is true?
???

* The structure of the include manifest, elements, and application.
* The Android Manifest file is placed in the java folder.
* It is a non-resource file that contain metadata information for the application. 

---
## Revision

What is the purpose of the files in the manifest folder?
???

* provides metadata for the project
* stores java source code
* stores a list of souce files in the project
* stores the main activity
