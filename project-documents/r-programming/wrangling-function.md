## Core project: R Programming | Create a wrangling function

**Primary core objectives targeted: 3, 4, 5, 7, 9**

Recommended additional objectives: 1, 2, 6, 10, 11

## Submission

This project must be completed **individually**.

Completing through the GitHub Classroom assignment is recommended. Alternatively, you may choose to create a dedicated repo within the D2M-R organization.

Detailed submission instructions are included in the `core-submission.qmd` document and the [GitHub Submissions Guidelines](http://d2m-r.github.io/assessment/misc/gh-submissions.html).

**Reminder:** Your work is not submitted until you have completed the [Submission Form](http://d2m-r.github.io/submit.html).

## Description

In this project, you will define a function for data wrangling. Your final product should be an .R script that defines your function, then demonstrates it with a range of test cases. "Wrangling" is loosely defined here. It should be a function that serves a useful and plausible purpose for data preparation.

You may choose to create a .qmd notebook to complete this project, but I wouldn't recommend it. Typically functions are defined in scripts, not notebooks. If you want to use a .qmd, I suggest actually defining the function in an .R script, then sourcing the script and calling the function in the .qmd.

In the instructions, I refer to your "function" (singular), but you may define as many as you like. Defining several simple functions can be a way to show the same range of skills as one more complex function.

## Instructions

1. Identify a data wrangling problem that needs a solution. The problem should apply to multiple contexts, such that a function defined to solve the problem can be used in more than one place. Ideally you should identify a need and develop the concept for your function based on a need you actually have (like something for your final data project data wrangling), but you can alternatively select from one of the following examples if needed. Create a function that:
    1. Guesses what the best data type for a column in an existing data frame should be (similar to how `read_delim()` operates during import)
    2. Creates a complete summary table with a consistent structure that works flexibly with different input data
    3. Reshapes non-tidy data in a given export format (e.g., .edf EyeLink files, Praat/TextGrid, exports from some particular SQL database) into a tidy format suitable for analysis and visualization
    4. Joins more than two dataframes together with an argument to specify what kind of join to use (left, right, inner, outer)
2. Write a "conceptual definition" of the function using comments. Focus on outlining the way the function works. Start broad and narrow as you work through the logical structure.
3. Use `function()` to assign the beginnings of a real definition (i.e., assigned code) to your new function. **Important: Give your function a unique and descriptive name.**
4. Using your conceptual definition to guide you, fill in as much code as you can to define a function that achieves your goal. You will likely need to revise your conceptual outline as you work and notice points that need correction, more specification, or major additions/deletions.
5. Run your function on a diverse set of test cases. Try to devise cases that would result in the function processing arguments in different ways. For example, arguments that would pass to different paths of a conditional statement, different data types for arguments that accept multiple, or leaving an optional argument blank (i.e., using the default option) for a portion of the test cases.
6. Continue refining your function and repeating the test cases until you are happy with your end product. It is not necessary for you to create a perfect function! Just give it your best shot and walk us through your reasoning, attempted solutions, and unresolved problem points.

Minimally, your final script should include:

1. ***Many* comments.** Since the comments should help you conceptualize and structure your function, there will probably be many more than usual, and they will be much more verbose than usual.
2. **A "working" function.** It may not be impressive or do everything you wanted it to do, but it doesn't throw an error when you run it (at least not usually).
3. **A range of examples.** Depending on the complexity of the function you define, this may only be a few cases or may be dozens of combinations of arguments. Use comments to note where output is notable in some way, like highlighting how your function handles a particularly unusual argument, when the function gives unexpected output, or when the function throws an error.

### Challenge suggestions

To make things trickier, show more skills, or earn engagement points, try one or more of the following:

1. Define multiple functions. As noted above, defining several simple functions can be a way to show the same range of skills as one more complex function. Beyond that, demonstrate off-the-syllabus skills and earn high engagement by defining multiple moderately complex functions and/or using one defined function in the definition of a different function.
2. Use conditional logic to control errors. In other words, when you find a test case that "breaks" your function with a fatal error, add code that purposefully stops the function and returns a custom, informative error message. A good starting place for this that applies to just about any function is restricting what data types each argument can be before running any of the function's "real" code.
3. Include both required and optional arguments. Be sure to choose sensible default options for any optional arguments and structure the order of arguments in a reasonable and intuitive way.
4. Write documentation for your function. Use the CRAN format (what you see in the viewer when you type `?some_function`) as a template.