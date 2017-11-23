# android-files-generated
author: tlawson

levels:

  - beginner

  - basic

type: normal

category: how to

links:

  - '[Android File Folder Structure](http://www.brainbell.com/android/file-folder-structure.html)'

---
## Content

The Project Tool window displays in the upper left corner as it supports many views. Each view (in the drop-down menu) has similar files but organizes it in a different way. By default, the Android view displays the project files. The Android view divides into an App folder and Gradle Scripts. 

In the Android view, the app section shows the following groups: manifests, java, and the res sub-folder which described the functions below.

* Manifests folder contains the AndroidManifest.xml file that provides metadata for the file. 
* Java folder contains java files that stores java source code files and its packages including the MainActivity.java file.
  Within the java file include: 
  * Every class starts with the package declaration in defining the package in which the class belongs to. 

     **package com.example.tammy.tammy_test_3;**

  * Import statements such as external packages are imported to use their methods in their own packages. 
    An example includes importing the AppCompatActivity class from the android.support.v7.app package.

      import android.os.Bundle;

      import android.support.design.widget.FloatingActionButton;
      
      import android.support.design.widget.Snackbar;
      
      import android.support.v7.app.AppCompatActivity;
      
      import android.support.v7.widget.Toolbar;
      
      import android.view.View;
      
      import android.view.Menu;
      
      import android.view.MenuItem;

  * Classes begin. In this case, the class name is MainActivity extends the AppCompatActivity class telling the compiler that 
    the current class is to derive the base class AppCompatActivity.

      public class MainActivity extends AppCompatActivity {
      
  *  Override annotation  tells the compiler that you want to provide your own implementation of a predefined method in the base class.      For example, the onCreate()method is defined in the AppCompatActivity class, but you want your own implementation of it, so you add      the annotation and override the behavior of the method.
 

        @Override
          protected void onCreate(Bundle savedInstanceState) {
          super.onCreate(savedInstanceState);
          setContentView(R.layout.activity_main);
          Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
          setSupportActionBar(toolbar);

        FloatingActionButton fab = (FloatingActionButton) findViewById(R.id.fab);
          fab.setOnClickListener(new View.OnClickListener() {
          @Override
           public void onClick(View view) {
          Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
          .setAction("Action", null).show();

* Res folder keeps resources - data for the java. It has many sub-folders such as layouts, strings, drawables, mipmaps, values, menu, 
  and bitmap images. 
* Gradle Scripts build configuration files, property files, and setting files.     


---
## Practice

What is the purpose of the manifest folder?
???

* It builds configuration files
* It provides metadata for the file
* It contains all the java files

---## Revision

What folder keeps resources?
???

* Res
* Manifest
* Ja
