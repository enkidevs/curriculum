---
author: kapnobatai136

category: tip

aspects:
  - introduction

---

# Adding and Editing Zaps 3

---
## Content

Now, let's take a look at the other `'optional'` fields:
1. `'Send as a bot?`
    - this is a useful feature that can be used when managing a large workspace
    - this field can take a `yes` (`true`) or `no` (`false)` value
    - for simplicity, we will set this field to `no`
2. `'Bot Name'`
    - if `'Send as a bot?'` is set to `yes` then you need to specify a name
    - otherwise you don't need to touch this field
3. `'Bot Icon'`
    - same as with `'Bot Name'`
4. `'Include a link to this Zap?`
    - another optional field
    - useful for debugging or general awareness of where messages come from
    - for this example we will set it to `no`
5. `'Attach Image by URL'`
    - add any URL that points to an image and it will be attached to the message
    - in this example we have left this option empty
6. `'Auto-Expand Links?'`
    - if you want your messages to contain a preview of the link set this option to `yes`
    - otherwise, set it to `no`
7. `'Link Usernames and Channel Names?'`
    - what this means is that if you message contains `'@channel'` or `'#channel-name'`, Slack will actually call said command
    - the `'@here'` command is not supported at the time of writing
8. `'Schedule At'`
    - schedule a time for the message to be sent
    - can't be more than 120 days in the future

You are now ready to click `'Continue'` (and as before you can skip the tests). Your zap is now ready to be used. Go ahead and change a row in the spreadsheet and see how the magic happens.

Don't forget to turn on the zap in the top right corner of the screen.
