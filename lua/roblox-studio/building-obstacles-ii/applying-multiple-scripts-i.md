---
author: junoocha
type: normal
category: best-practice
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Applying Multiple Scripts

---

## Content

One thing you might have noticed is that when we create scripts, we **would have to create multiple copies of the script** to **apply to multiple objects**. This is *not very organized*, *nor is it efficient* when you want to create multiple kill blocks, or if you want to create multiple platforms that move in the same way.

One way to avoid this issue is to **group all related parts into a model** and **loop through** each child/part in the model.

To create a model, **right-click on a part in the explorer tab** and select **"Group as Model"**. A new model should be created with the parts inside it. New parts can be dragged into the model, as if you're moving files into a folder.

---

## Practice 

To create a model in the explorer tab, you should ???

- right-click on a part and select "Group as Model"
- take a model from the toolbox and replace it with your own parts
- use a script to generate a model in-game
- change the part's name to "Model"

---

## Revision

To apply a specific script to various objects, we should ???

- group all related parts in a model and iterate through the model
- create various copies of a script
- list numerous variables in a script
- copy and paste the part that's affected by the script