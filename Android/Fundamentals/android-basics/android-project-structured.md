# how-android-project-structured
author: tlawson

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[Android Project Structure](https://developer.android.com/studio/intro/index.html)'

---
## Content

When an Android application is created, Android Studio creates 	the necessary structure for all your files and folders and makes them visible in the left-side pane of the Projects window. By default, the Android view is displayed showing all your project files.  Each app module contains the following folders:

*	**Manifests:** Contains the AndroidManifest.xml file describing information about the Android Application.
*	**Java:** Contains all the Java source code files. 
*	**Res:** Contains all non-code resources such as XML layouts, strings, and bitmap images. 

From the drop-down menu are other views containing the files and folders structure. The Android view differs from the Project view in that the Project module (app) is the actual project folder where the application code resides. The application folder has the following subdirectories:

*	**.idea:** Uses project.properties file for a project specific metadata.
*	**Build:** Has all the complete output of the make process including classes and resources. 
*	**Libs:** Hold libraries or .jar files. 
*	**Src:** Can have both application code and android unit test script.
*	**Gradle:** The gradle build systems jar wrapper is found in that Android Studio communicates with gradle.
*	**External libraries:** Where Referenced Libraries and information on SDK are displayed.



---
## Practice

What are the following folders that are contained in each app module?
???

* manifests, java, and res
* libs, manifests, src
* java, res, gradle

---
## Revision

What is the purpose of the res folder?
???

* Contains all non-code resources to include XML layouts, strings, and bitmap images
* Contains all non-code resources to include libraries and application code
* Describe the information about an Android application including referenced libraries
