Project 8
================

Remember that Projects do not have fixed deadlines. You can work on this
item until you are ready to submit it. However, remember the [**two
items per
week**](https://sta518.github.io/courses/course-grading/revision/#projects)
policy.

## Overview

This Project is different from the previous ones in that you are
completing this as a Team. However, outside of your Team members, the
only other person you may discuss this with is still only your
instructor.

Learning Targets associated with this Project:

  - **PD.1** - I can use a project-based workflow to organize analysis
    documents.
  - **PD.3** - I can use tools to collaborate with others.
  - **PD.4** - **CORE** - I can use best coding practices and coding
    style guidelines when writing R programs.

Your final report should interweave code, output, and narrative. All
work should be done within your `project08-<username>` repo and your
final deliverable will be the resulting Shiny App.

You will submit a link to your finalized `project08-<username>` repo
through Bb. This done at the same place where you created this repo.

## Getting Help

You are allowed to use books or searching online resources like
Google/Bing or StackOverflow to find suggestions during this Project,
but **you must cite any resource** that you use beyond the R4DS textbook
and class activities (that is, you do not need to site R4DS or the class
activities). You may not communicate with any person other than your
Team members and your instructor. Violations of this policy include
*any* consultation with other students or former students, including
Stat Tutoring Center tutors; using work from another student or former
student; submitting the problem to a online help site like
StackOverflow, Chegg, Coursehero, or any online forum. All such
violations will be treated as academic dishonesty and will *minimally*
result in a grade of **I** and being banned from revising the work.

If your instructor feels that a question you ask would benefit the
entire class (e.g, it will clarify a general item), you will be
redirected to post that as an Issue in the community repo. **You may
only post questions about this project on the community repo if
instructed to do so.** You may not share information with other people
about the content of this Project unless explicitly approved by your
instructor.

## Evaluation

Projects are graded using the
[“*ESRI*”](https://sta518.github.io/courses/course-grading/grading/#projects)
marking system.

![](README-img/emri-flowchart.png)

A grade of **E** or **S** requires all of the following to be met:

  - You committed/pushed everything in your repository including your
    `project08.md` file. Repos that do not contain a `project08.md` file
    will be automatically graded **I**.
  - Use efficient coding practices and follow the coding style guide
    that we have been using in the activities to produce the desired
    output.
  - All discussion or descriptions are clear and completely discuss
    important details. Your discussions or descriptions should be
    written for someone with a STA 215 (Introductory Statistics)
    background, but they do not have any experience with R.
  - There are no errors in your code.

A grade of **E** is given if all the stated expectations are met and the
work is of superior quality in terms of the clarity of explanations and
work, appearance of the report, and precision of code.

Correct computation with insufficient explanation will need to be
revised (**R**) and may receive an **I** grade.

## ☑️ Task 1: Git-ing Started

These steps are slightly different than previous Git-ing Started
directions because you will be working by yourself. You are still
welcome to create branches to help you organize your work, but this is
not an expectation.

1.  In the root of the Project 8 GitHub repository (i.e.,
    `STA518-<section>-Fall20/project08-<teamname>`), click on the “Code”
    button.

<!-- end list -->

  - Verify that the drop-down says **Clone with HTTPS** (this is
    *probably* the default view; otherwise, select “Use HTTPS”)
  - Click on the clipboard-icon to copy the repo URL

<!-- end list -->

2.  Create a new Project. You can do this by clicking on the
    new-project-icon ![](README-img/new-project-icon.png) or through the
    menus (File \> New Project…).

<!-- end list -->

  - In the *New Project Wizard* pop-up, select **Version Control** on
    the *Create Project* screen, then select **Git** on the *Create
    Project from Version Control* screen.
  - On the *Clone Git Repository* screen, paste the URL of your GitHub
    repository from (1) into the *Repository URL* dialog box. It should
    look like:
    `https://github.com/STA518-<section>-Fall20/project08-<teamname>.git`
  - The *Parent directory name* dialog box will be automatically
    populated with your repository name. It should look like:
    `project08-<teamname>`
  - In the *Create project as subdirectory of* dialog box, click on
    **Browse**.
  - In the *Choose Directory* pop-up, **Browse** to the class-level
    folder you created in Activity 1.2 (and possibly the `activities`
    folder) and click **Choose**.
  - Verify that the *Create project as a directory of* dialog box
    contains the folder location that you previously specified, then
    click on **Create Project**. You should then be asked to login with
    your GitHub credentials on a *Clone Repository* pop-up window - **do
    this**. **This *should* be the last time you need to provide your
    GitHub credentials.**

<!-- end list -->

3.  After a few seconds, your RStudio session will refresh and you
    should be in your newly created RStudio Project\! Remember that this
    is YOUR workspace and your Team Members will ONLY see what you have
    done once you commit/push to GitHub.
4.  In the **Git** pane (upper-right-hand pane of your RStudio session,
    the tab three to the right of **Environment**), click on
    new-branch-icon ![](README-img/new-branch-icon.png) (on the
    right-hand side of this pane’s tool bar).

<!-- end list -->

  - In the *New Branch* pop-up, name the branch your GitHub `username`
    and click **Create**. I hope that you are not prompted to provide
    your log-in with your GitHub credentials. 🤞

## ☑️ Task 2: Components

### TL;DR

Pick data, any data and do something with it.

### Overview

Project 8 consists of an analysis of data of your own choosing as a
Team. You can choose the data based on your interests or based on work
in other courses or research projects (if they allow it). The goal of
this project is for you to demonstrate proficiency in the techniques
that we have covered this semester (and beyond, if you like) and apply
them to a dataset in a novel, meaningful way.

#### Project 8 Proposal

A Follow-up assignment will serve as proposal for Project 8. In this
assignment you and your Team members will write a brief prospectus for
what research question(s) you wish to explore. This will be written
using R Markdown and an opportunity to integrate and improve your
Markdown typesetting. More details for the proposal will be shared in
that assignment.

#### Data

In order for you to have the greatest chance of success with this
project it is important that you choose readily accessible and large
enough that multiple relationships can be explored. As such, your
dataset must have at least 50 observations and between 10 to 20
variables (exceptions can be made, but you must speak with your
instructor first). The data should have a mix of categorical and
numerical variables.

All analyses must be done in RStudio. If you are using a dataset that
comes in a format that we have not encountered in class, make sure that
you are able to load it into RStudio as this can be difficult depending
on the source. I am happy to help with ample time.

You cannot reuse data that we have used at any point in this class.

#### Shiny App

You will create a Shiny App/Dashboard that walks users through the data
analysis of your Project 8. The app should minimally include:

  - Clearly stated research question(s) that are easy for someone with
    an introductory statistics background, but no experience with R.
  - Effective data visualizations and numerical summary tables that aid
    in your analysis.
  - Brief, yet complete descriptions of your results and important
    findings.
  - Clear and thoughtful directions for users to navigate your app.

## ☑️ Task 3: Self-assessment

Complete a Learning Journal entry (titled `team-project-entry.md`) where
you use the **ESRI** marking system to assess your own project
submission. You must provide rationale using specific details for your
assessment.

Additionally, in this Learning Journal entry, provide a section called
`Self and Peer Evaluation` where you assess each of your Team Members
and yourself on a Poor-OK-Good rating on overall contribution to Project
8. For each member (including yourself) clearly articulate why you
assigned that particular rating.

A table would be an effective way to do this:

| Member        | Rating | Description   |
| ------------- | ------ | ------------- |
| Bradford (me) | Poor   | …description… |
| Dan           | Good   | …description… |
| Laura         | OK     | …description… |

If you decide to update any components of your report after completing
this self-reflection, add this additional detail to this same Learning
Journal entry as an `Addendum` section. In this addendum, discuss what
about the Project standards criteria and descriptions made you update
your report.

This Learning Journal will be factored into your individual contribution
portion of Project 8. Failure to complete or a poor effort in completing
this self-assessment will result in lowered marks compared to the Team’s
overall mark.

## ☑️ Task 4: Submit your Project 8

Back at your Project 8 repo, copy the address to your repo’s root
directory. It should look like
`https://github.com/STA518-<section>-Fall20/project08-<username>`.

Go to the Project 8 assignment on [Bb](https://mybb.gvsu.edu). Paste
your repo’s link in the submission box as a *clickable* link and I will
have it assessed shortly.
