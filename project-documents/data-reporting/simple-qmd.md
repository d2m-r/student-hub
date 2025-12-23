## Core project: Data reporting | Simple .qmd notebook

**Primary core objectives targeted: 1, 2, 3, 6**

See additional guidelines for demonstrating [Objective 1 (Workflow)](http://d2m-r.github.io/assessment/misc/workflow-assessment.html) and [Objective 2 (Git/GitHub)](http://d2m-r.github.io/assessment/misc/gh-assessment.html) on the course site.

**Recommended additional objectives: 7-12**

This project is ideal for demonstrating *any* of the core objectives at *any* level, because you have full flexibility over what to include in your Quarto notebooks. You can incorporate other skills into the structure of this project in whatever way you think makes sense or combine it with elements of other menu projects.

Consider combining this project with the Skeleton Repo project.

## Submission

Detailed submission instructions are included in the `core-submission.qmd` document and the [GitHub Submissions Guidelines](http://d2m-r.github.io/assessment/misc/gh-submissions.html). 

Completing in a dedicated repo in the D2M-R repo is recommended. Alternatively, you may choose to work directly within the GitHub Classroom Assignment

If working in a dedicated repo, remember:

1. Copy the `core-submission.qmd` doc from `student-hub/templates` into the top level of your repo and complete in full. 
2. Ensure you create a *private* repo. Invite all instructors as collaborators with Write+ permissions.
3. Initiate a `feedback` branch and pull request.

**Your work is not submitted until you have completed the [Submission Form](http://d2m-r.github.io/submit.html).**

## Description

In this project, you will create a Quarto notebook that includes the three core components: a YAML header, code chunks, and pandoc markdown text.

## Instructions

1. Create a .qmd Quarto notebook.
2. Refer to the example files from Quarto's documentation to add meta-info to the YAML header, minimally:
    1. Title
    2. Short title
    3. Author(s)
3. Create one or more code chunks that perform setup tasks, for example:
    1. source() an .R script
    2. Load or require packages
    3. Set a random seed
    4. Read in data
    5. Set default chunk options
4. Create one or more code chunks that execute non-setup R code, for example:
    1. Use R operators to assign values to objects
    2. Construct a data frame
    3. Define a function
5. Add/edit markdown to include at least (*lorem ipsum* is ok):
    1. 1st, 2nd, & 3rd headers (1 of each)
    2. 1 unordered list & 1 ordered list
    3. Bold & italicized text
    4. 1 linked URL
    5. 1 HTML-style comment

### Challenge suggestions

To make things trickier, show more skills, or earn engagement points, try one or more of the following:

1. Create both a Quarto notebook (.qmd) and R Markdown notebook (.Rmd). Identify points of difference and similarity. Try to find additions that work in the “next gen” Quarto but not in the older R Markdown.
2. Render your notebook in multiple output formats (pdf, docx, html). Set different options for each.
3. Use the apaquarto extension so that your qmd renders into APA style. You’ll have to think carefully about which installation method to use and how to adapt it to work within your assessment repo.
4. Show off some R skills in your code chunks! Use this mini-project to demonstrate as many skills as you like in R programming, tidyverse functions, visualization, analysis, or anything else.
5. Figure out how to use .css, .scss, and/or .yml files (like the ones created when you start a new Quarto project).
6. Integrate HTML into your markdown text using in-text spans (with `<span>` tags) or fenced div blocks (with `::: {.divlayername} [...div contents...] :::` ).