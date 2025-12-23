
## Core project: R Programming | hello_world function

**Primary core objectives targeted: 3, 4, 5**

Recommended additional objectives: 1, 2, 10, 11

See additional guidelines for demonstrating [Objective 1 (Workflow)](http://d2m-r.github.io/assessment/misc/workflow-assessment.html) and [Objective 2 (Git/GitHub)](http://d2m-r.github.io/assessment/misc/gh-assessment.html) on the course site.

## Submission

This project must be completed **individually**.

Completing through the GitHub Classroom assignment is recommended. Alternatively, you may choose to create a dedicated repo within the D2M-R organization.

Detailed submission instructions are included in the `core-submission.qmd` document and the [GitHub Submissions Guidelines](http://d2m-r.github.io/assessment/misc/gh-submissions.html). 

**Reminder:** Your work is not submitted until you have completed the [Submission Form](http://d2m-r.github.io/submit.html).

## Description

In this project, you will build a function called `hello_world()`. This is a classic beginner programming exercise for learning any coding language. It can start very, very small and work up to complex functionality.

## Instructions

1. In an .R script, define the `hello_world()` function meeting at least the minimal requirements below.
2. In the same script, after defining the function, call the function with at least 2 different sets of arguments.
3. Before submission, make sure your function is thoroughly documented with comments!

Minimally, your `hello_world()` function should include at least 1 object assignment and at least 1 conditional statement.

It should take at least 1 argument, for example:

- `name` (string)
- `time_of_day` (numeric or POSIX)
- `is_morning` (boolean)
- `return_n_greetings` (integer)

Your function should have at least 2 possible return values, such as:

- hello, class
- Good morning, Dr. Dowling!
- Sup?
- bonjour mes amis

You can choose to make your function as simple or as complex as you like. The more complex, the more you can demonstrate your R programming skills.

In addition to the primary r programming objectives listed above, this project is a good opportunity to demonstrate use of tidyverse functions.

### Challenge suggestions

To make things trickier, show more skills, or earn engagement points, try one or more of the following:

1. You can also choose to build your project in a Quarto notebook (vs .R script) to demonstrate additional markdown/quarto skills. If you do this, you can either define your function within the notebook or source it from an .R script.
    1. In D2M-R I, markdown/Quarto skills may count toward Core Standards 1 and/or 12, depending on complexity and content, and/or earn enrichment points. In D2M-R II, working in Quarto will count directly toward the most applicable core standard(s).
2. Write multiple functions, so that your final `hello_world()` function includes the other function(s). For example, you could write a function takes a precise time and returns a general time of day (morning, afternoon, evening, night), then have your `hello_world()` function could then use this function to determine the time of day and return a greeting accordingly.
3. Use the `stringr` package to manipulate the input arguments in some way. For example, you could use `str_to_lower()` to make sure the name argument is all (or mostly) lowercase before returning a greeting, so that a name argument of "NaTaLiE" would result in something like "hello Natalie".
4. Include one or more `for` or `while` loops in addition to the conditional statement(s).
5. Make me (and you) laugh! This is a classic beginner exercise, which gives you a chance to get creative. You'll be able to show off more coding skills if you can make it entertaining enough for you to stick with it a little longer.