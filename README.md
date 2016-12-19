# Enki Content Contribution: How To

*Note: for company private content repos, please replace the https://github.com/sagelabs/content URL with your company’s private content repo URL.*

## To work on the content repo locally
1. First, clone the content repo: https://github.com/sagelabs/content
2. Now, install generator-enki which is a tool that renders an insight template for you quickly and easily.
3. To install, navigate to https://github.com/enkidevs/generator-enki and follow the ReadMe.
4. `git pull` to update the content repo’s latest changes before each session.


## To work on the content repo on the GitHub website
1. Navigate to https://github.com/sagelabs/content
2. Find the relevant topic and subtopic folder.
3. Create files or edit existing files and make pull requests on a new branch directly on the GitHub content repo.


## To edit an insight
1. Open the file you’d like to edit (either locally or on GitHub).
2. Edit and make relevant changes
3. Make a pull request on a new branch with your changes.
4. A reviewer will review your PR and approve merge when ready.


## To create an insight

All insights should follow the [Insight Guidelines](https://paper.dropbox.com/doc/Insight-Guidelines-Clu1qkcjwriRTlNINwNMx).

**Locally:**

1. Navigate to the content repo on your local machine.
2. Navigate to the subtopic folder where you want to create the insight.
3. In Terminal, type  `yo enki:insight` 
4. Follow instructions in Terminal to create your insight template.
5. The insight file will be created, you can now edit this file in your text editor.
6. Make a pull request when you’ve finished creating the insight.

**On GitHub/web (not recommended):**

1. Navigate to the content repo on GitHub
2. Navigate to the subtopic where you want to create the insight
3. Create a new file, using the insight title as the filename (replacing spaces with ‘-’), and `.md` for the extension (for example Creating An Insight For Enki’s file would be named `creating-an-insight-for-enki.md` )
4. Copy the insight template (+Github Insight Template)
5. Create your insight based on the insight template.
6. Create your pull request on a new branch when you’ve finished.


## To create a game

**Locally:**

1. Navigate to the content repo on your local machine.
2. Navigate to the subtopic folder where you want to create the game.
3. In Terminal, type  `yo enki:insight` 
4. Follow instructions in Terminal to create your game template.
5. The game file will be created, you can now edit this file in your text editor.
6. Make a pull request when you’ve finished creating the game.

**On GitHub/web (not recommended):**

1. Navigate to the content repo on GitHub
2. Navigate to the subtopic where you want to create the game
3. Create a new file, using the insight title as the filename (replacing spaces with ‘-’), and `.md` for the extension (for example Creating A Game For Enki’s file would be named `creating-a-game-for-enki.md` )
4. Copy the game template (+Game Templates)
5. Create your game based on the game template.
6. Create your pull request on a new branch when you’ve finished.


## Previewing changes or new content
1. When you’ve submit your insight or changed an insight, a bot will comment on your PR with links to preview your changes or newly created insight.
2. You can test the visual of the insight, the revision questions, game, or any other element of the insight from these links.
3. In addition, automated checks will validate the format of your insight below the comments.


## Reviewing content
1. To review content changes or new content, view the open pull requests on the content repo.
2. Check the preview links added by the enki-hq bot to preview the insights.
3. If everything is okay, merge.
4. Otherwise, edit the insight directly or leave comments on the pull request for the contributor.


## How to add images
1. Images on Enki are supported only in SVG format
2. Use the https://enkidevs.github.io/svgomg/ tool to upload your SVG
3. Once uploaded, navigate to ‘Enki Image Code’:

![Preview](https://d2mxuefqeaa7sj.cloudfront.net/s_807FF94CFA7CEE44DBBA8A50F2F53E5F49DA9ACB203A2128D5EF02C3B09B4ECD_1481598513946_file.png)

4. Paste the code displayed into your insight to insert your image.
5. Preview the insight after submitting your pull request to check the image addition worked.


## To create a topic
1. Navigate to the root folder of the content repo.
2. In Terminal, type `yo enki:topic`  
3. Follow the instructions in Terminal to create your topic.


## To create a subtopic
1. Navigate to the Topic folder that your Subtopic belongs to.
  1. For example, if you are creating ‘React’ navigate to ‘Javascript’.
2. In Terminal, type `yo enki:subtopic` 
3. Follow the instructions in Terminal to create your subtopic.
