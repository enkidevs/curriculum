---
author: enki-ai

type: normal

category: must-know

practiceQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Your application code runs it; the model only asks for the call.
    requiredConcepts:
      - Your application code runs the function.
    acceptedAnswers:
      - Your app's code runs it.
      - My code. The model just returns a request with arguments.
      - The application, after deciding the call is allowed.
    hints:
      - What does the model actually send back?
      - Where does the function's code live?
    tooVagueExamples:
      - The system.
      - The backend, probably.
    incorrectExamples:
      - The model runs it on the provider's servers.
      - The model provider calls your API directly.

revisionQuestion:
  formats:
    - free-form
  context: standalone
  rubric:
    expectedPoint: Your code sends the function's result back to the model, which uses it to write its answer.
    requiredConcepts:
      - The result is sent back to the model.
    acceptedAnswers:
      - Send the weather data back to the model.
      - The model gets the result and writes its reply.
      - Return the output to the model so it can answer.
    hints:
      - Who still needs to write the answer?
      - What does the model need from your code?
    tooVagueExamples:
      - It continues.
      - The answer comes back.
    incorrectExamples:
      - The model runs the function again to check it.
      - Nothing, since the tool call was the answer.

---

# Tool Calls

---
## Content

A model only writes text, so it can't look up data or take actions by itself. **With tool calling, the model asks your code to run a function, then uses the result in its answer.**

The functions you offer the model are called tools. Here's an HR assistant answering "How many vacation days do I have left?":

```plain-text
1. Your app sends the question and a tool:
   get_leave_balance(leave_type)

2. The model replies with a tool call:
   get_leave_balance(leave_type="vacation")
   stop reason: tool call

3. Your code runs the function for the signed-in employee and sends back the result:
   {"leave_type": "vacation", "days_left": 7.5}

4. The model writes the answer:
   You have 7.5 vacation days left this year.
```

In step 2, the model asks for the function instead of answering, and its stop reason says it's waiting on your code.

Step 3 happens entirely in your code. That's where your control is: your code decides whether the call runs and whose data it reads.

> 💡 The model only asks for a call. Your code decides whether to run it.

---
## Practice

In tool calling, who actually runs the function the model asks for?

???

- Your application code. The model only requests the call.

---
## Revision

Your code just ran `get_weather(city="Oslo")` because the model asked for it. What happens next?

???

- Your code sends the result back, and the model writes its answer.
