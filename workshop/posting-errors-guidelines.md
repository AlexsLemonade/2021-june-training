---
title: Guidelines for posting an error to Slack
---
<p><img style = "padding: 0 15px; float: left;" src = "screenshots/slack-cancer-data-science-logo.png" width = "75"></p>
<p style="margin-top: 20px;"> </p>
<p>We use the <b>Cancer Data Science Slack</b> team administered by the CCDL for communication.
If you haven't joined Cancer Data Science Slack yet, you will need to follow the 
<a href="https://alexslemonade.github.io/{{site.repository}}/virtual-setup/slack-procedures.md">
set up procedures described here</a>.</p>
<br>
During and after the workshop, we encourage you to post your code error question to your Slack training channel.
But, asking questions about code in such a way that others can readily help you can be tricky and is a skill itself!

Here we've laid out guidelines for posting your question so that your peers and the CCDL team will readily be able to help you find a solution.
Following these guidelines will take more time but it will increase your chances of getting speedier responses that more adequately help you resolve your error!

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [What information should a question about code include?](#what-information-should-a-question-about-code-include)
- [A troubleshooting example](#a-troubleshooting-example)
  - [Step 1) Do what you can to try to solve the error yourself (but don't tire yourself out!)](#step-1-do-what-you-can-to-try-to-solve-the-error-yourself-but-dont-tire-yourself-out)
  - [Step 2) Draft out the description of your error post.](#step-2-draft-out-the-description-of-your-error-post)
      - [Where is this error occurring; what notebook/chunk?](#where-is-this-error-occurring-what-notebookchunk)
      - [What is the goal of this code?](#what-is-the-goal-of-this-code)
      - [What is the code that is producing this error?](#what-is-the-code-that-is-producing-this-error)
      - [What is the error or problematic outcome?](#what-is-the-error-or-problematic-outcome)
      - [(Optional) What have you tried thus far?](#optional-what-have-you-tried-thus-far)
  - [Step 3) Post to Slack!](#step-3-post-to-slack)
      - [Step 3a) Post the headline of your problem.](#step-3a-post-the-headline-of-your-problem)
      - [Step 3b) In the thread of your headline, post the description you crafted in Step 2.](#step-3b-in-the-thread-of-your-headline-post-the-description-you-crafted-in-step-2)
  - [Step 4) Look for responses (in the same thread)!](#step-4-look-for-responses-in-the-same-thread)
  - [Posting a code error question checklist](#posting-a-code-error-question-checklist)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# What information should a question about code include?

We consider the themes of a good troubleshooting post to be `context` and `specificity`.
The more context you can provide, and the more specific you can be about your problem, the easier it will be for someone to help you.

**Overall your posted code question should include:**

- Where is this error occurring (notebook/chunk)?
- What is the goal of this code?
- What is the code that is producing this error?
- What is the error or problematic outcome?

*Optionally:*
- What things have you tried thus far?

To demonstrate what we mean by these guidelines we will walk through an example.

# A troubleshooting example

In this example, I'm using our exercise notebook `04a-intro_to_R_exercise.Rmd`.

Below I'm showing a screenshot of what this error would look like when encountering it on [our RStudio Server](../virtual-setup/rstudio-login.md).

<img src = "screenshots/file.path-error.png" width = "800">

## Step 1) Do what you can to try to solve the error yourself (but don't tire yourself out!)

The best way to learn how to solve errors in code is to figure them out yourself.
So try to explore the error a bit - but we are also here to help you so don't hesitate to ask for help! 
(_If you are feeling exasperated by your error, skip to Step 2_).

We recommend looking over our [debugging guide](https://github.com/AlexsLemonade/training-modules/blob/{{site.release_tag}}/intro-to-R-tidyverse/00b-debugging_resources.md) which can explain what some of the most common errors mean.
The debugging guide also has tips on first steps to take which may help you get to the root of the problem.

**A short list of things to try:**  

- Try to identify which part of your code appears to be the problem through trying smaller parts of the code and seeing if the error still occurs (called chunking).
In the chunking example below, each highlighted portion is something you could run by itself to test.
(Using `Command + Enter` in RStudio will run what you have highlighted. On Windows or Linux systems it may be `Crtl + Enter`).

<img src = "screenshots/chunking_code.png" width = "500">

- [Restart your R Session](../virtual-setup/rstudio-login.md#stoppingstarting-rstudio-sessions) and go back to the beginning of your notebook to re-run all of your code in order to make sure you haven't missed any vital steps! Order matters!

## Step 2) Draft out the description of your error post.

You may want to open up a text editor to write this out before posting (this is a personal preference thing).

For our example error, here's how each of the "four points" (and the optional one) could be included in your posted question; we will go through the details on each point:

<img src = "screenshots/breakdown.png">

### Where is this error occurring; what notebook/chunk?

- In our workshop, notebook references tend to make sense to provide, however, more generally this should be any context around __where__ you've encountered this error.

- If you are *not* working from any CCDL materials, it is *even more important* to provide context around what the notebook you are creating is supposed to be doing.

- Note that line numbers change as you've added code, so line numbers as a reference aren't as helpful.

*For our example:*  
<img src = "screenshots/where-is-the-error.png" width = "600">

### What is the goal of this code?  

- Describing your end goals for this code will provide context for others so they can tailor their advice with your goal in mind.
    *Examples of information you may want to include (whenever it is applicable):*
    - What is your scientific question?
    - What does your input data look like?
       - What kind of file *e.g.* `.TSV`, `.fastq`?
       - What information is included the data?
       - What are the columns?
       - What are the rows?
    - What'd your desired output?
       - What kind of results are you looking for e.g. a plot, a table, processed/filtered data?
       - What kind of file *e.g.* `.TSV`, `.fastq`?

- Sometimes you can bypass an error completely by using an alternative strategy altogether, but your helper won't be able to suggest an alternative if they don't know your ultimate goal.

*For our example:*  
<img src = "screenshots/what-is-the-goal.png" width = "600">

### What is the code that is producing this error?

- [Use backticks (```) to format your code.](../virtual-setup/slack-procedures.md#adding-code-blocks-to-messages) (How to do this in the next step).
Formatting your code makes it easier for others to distinguish between your code and the words in your post where you are otherwise describing the problem.

- Screenshots are not ideal because others can't copy your code from a screenshot.
Being able to copy and paste the code itself makes it much easier for others to help you, and to provide a reply with code that you can copy!

*For our example:*  
<img src = "screenshots/what-is-the-code.png" width = "600">

### What is the error or problematic outcome?  

- Include any error messages verbatim.
Also preferably not a screenshot so others can copy-paste for Google searching (A reminder to also try Google searching yourself before posting - It's often surprisingly helpful!).
- If you don't have an error message per se, but do have something else that is not working as expected, describe what isn't working and how you found it.
     - *Example*: "This data.frame I'm showing in my code, called `cool_df` doesn't have row names when I look at it in my environment panel".
- Context around when the error appears versus when it does not can be helpful clues to your reader.

*For our example:*  
<img src = "screenshots/what-is-the-error.png" width = "600">

### (Optional) What have you tried thus far?  

- This is considered an optional point because we understand you also may not know where to begin (and that is definitely okay - we are here to help!)

- If you have tried some things to fix the problem, it can be helpful for others to know what you've tried and narrow down on what the problem might be.

- If you have tried solutions you have found posted online, including the links to those solutions is helpful.

*For our example:*  
<img src = "screenshots/what-have-you-tried.png" width = "600">

## Step 3) Post to Slack!

First, navigate to your particular workshop's training channel.

### Step 3a) Post the headline of your problem.

To keep new questions and responses from getting lost in the messaging board, we strongly encourage you to make a "headline" that is one post and put the longer description you crafted in step 2 in the thread of your headline.

*For our example:*  
<img src = "screenshots/error-headline.png" width = "600">

To navigate to Slack threads, you can can click speech bubble in the corner of your post:

<img src = "screenshots/thread-button.png" width = "200">

You should try to keep all further messages and correspondence about that question in the same Slack thread.
Follow up problems in the same section of code should also be kept to this same thread you started.

### Step 3b) In the thread of your headline, post the description you crafted in [Step 2](#step-2-draft-out-your-question-youll-post).

Navigate to the Slack thread of your "headline".
You can can click speech bubble in the corner of your post: <img src = "screenshots/thread-button.png" width = "150">

If you wrote out your error description in a text editor, it may have looked like this, where backticks we can turn into code chunks after we copy-paste it in Slack:

<img src = "screenshots/text-editor.png" width = "500">

When you are typing out your error description you may find it helpful to have our "four points" handy.
We've included [a checklist you could use for creating your post](#posting-a-code-question-checklist) for this purpose.

When you paste your text into Slack, it may ask if you'd like to `Apply formatting`. Click `Apply`.
If Slack doesn't ask you about formatting for some reason, you can also click `Shift + Command + F` and it will apply the formatting.

<img src = "screenshots/slack-apply-formatting.png" width = "500">

Either method will format your post like below:

<img src = "screenshots/slack-formatting-applied.png" width = "500">

If all looks set, click the green arrow to add it to the thread!

**Slack Tip:** if you see a mistake in your post you missed, you can click on the three dots in the corner of your Slack post and choose `Edit message` and fix the mistake:

<img src = "screenshots/slack-edit-message.png" width = "500">

## Step 4) Look for responses (in the same thread)!

We don't want anyone's questions or responses to get lost, especially after you've followed these careful steps to craft it!

Or click on the `replies` button below your post:

<img src = "screenshots/replies-slack.png" width = "400">

It's in the Slack thread that you should hopefully see a response that helps you fix your error! :tada:

<img src = "screenshots/slack-thread.png" width = "350">

Lastly, it is helpful for the person who has responded to you or others who might have the same problem if you can remember to post on the thread if/how you resolved the problem!

<img src = "screenshots/solved-thread.png" width = "350">

Congrats on solving your error! 🎉

## Posting a code error question checklist

*Here's a checklist you can use to craft your question post:*

- [ ] What is the goal of this code?
- [ ] Where is this error occurring (notebook/line/chunk)?
- [ ] What is the code that is producing this error?
- [ ] Is the code formatted?
- [ ] What is the error or problematic outcome?
