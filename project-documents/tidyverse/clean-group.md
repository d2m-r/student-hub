## Core project: Data cleaning | Make-a-mess (group)

**Primary core objectives targeted: 1-8**

Recommended additional objectives: 9-11

*Note: Some projects that center on dataset manipulation share similarity in structure. There is considerable overlap in the instructions across some mini-projects, but there are also important differences. Please read carefully.*

### Submission

Detailed submission instructions are included in the `core-group-submission.qmd` document and the [GitHub Submissions Guidelines](http://d2m-r.github.io/assessment/misc/gh-submissions.html).

**Option 1 (Recommended): Dedicated repo in the D2M-R organization**

1. One group member creates a **private** repo in the D2M-R organization and invites all group members and instructors as collaborators with Write+ permissions.
2. All group members clone the repository to their local machines.
3. Each group member should make their contributions to the document in their own branches.
    1. Recommended: In addition to working in their own branches, each group member should create a dedicated subdirectory for their data and initial code.
4. Copy the `core-group-submission.qmd` doc from `student-hub/templates` into the top level of your repo and complete in full.
5. Initiate a `feedback` branch and pull request for instructor grading.

**Option 2: GitHub Classroom Assignment**

1. Designate one person to be the "leader." The leader accepts the GitHub Classroom Assignment and creates your "Team."
2. All other group members join the team through the assignment link.
3. Each group member should make their contributions to the document in their own branches.
    1. Recommended: In addition to working in their own branches, each group member should create a dedicated subdirectory for their data and initial code.
4. Complete the `core-group-submission.qmd` doc in the top level of your repo.
5. Comment on the auto-generated `feedback` branch’s pull request when ready for grading.

**For either option:**

**Your work is not submitted until one group member has completed the** [Submission Form](http://d2m-r.github.io/submit.html) **on behalf of the group, including all group member names and GitHub usernames.**

## Description

In this project, you will work together with a classmate to each “unclean” a dataset for the other(s) to clean. This will work best in pairs so that you can swap datasets (I’ll refer to “partners” in these instructions), but you can adjust things to do in a small group if you prefer.

Note that in these instructions I purposefully use “clean” rather than “tidy.” You should think about why.

## Instructions

1. Each partner should select a publicly available dataset. You can use the `data()` function to view a list of dataframes loaded with base R. Some packages contain additional example dataframes to explore.
2. In an .R script or .qmd notebook in your subdirectory of the repo, transform your selected dataframe to make it messy. **Do not share this file with your partner.**
    1. Avoid letting your partner see the script early by (temporarily) adding the file(s) to your .gitignore. 
    2. Refer to the `example-mess-making.R` script for ideas on how to “unclean” data. This example is the code that builds the messy data for the data cleaning walkthrough.
    3. Use comments (.R files) and/or markdown text (.qmd notebooks) to explain the steps you’re taking.
3. Write your messy data to a .csv file in the subdirectory, commit, and push to the shared repo.
4. In an .R script or .qmd notebook, clean your partner’s messy dataset. 
    1. Include this .R/.qmd in the same subdirectory as the messy data being cleaned.
    2. You can aim to return it to the state of the original dataset or continue transforming the data to make your own data cleaning choices.
5. Commit changes and push *all* scripts and notebooks to the shared repo (remove them from the .gitignore if you added them).
6. Discuss the process with your partner after you have both finished cleaning. Did you miss anything? Did you more or less “invert” the mess-making process or use different approaches? Do you think the resulting datasets are sufficiently “clean”? (Bonus: are they “tidy”?)

Your mess-making can be in either a script or notebook and does not need to follow the same patterns as the example. However you decide to approach the task, your mess-making should minimally: 

1. Load required libraries
2. Set a random seed
3. Use tidyverse functions to transform a publicly available dataset
4. Write the messy dataset to a .csv file to share with your partner/group.

**Be sure to use frequent, informative comments and/or markdown text to explain decision-making and procedure for both the un-cleaning and cleaning processes.**

### Challenge suggestions

To make things trickier, show more skills, or earn engagement points, try one or more of the following:

1. Incorporate relatively more complex transformations that create puzzles for your partner. For example, if the original data has variables height and weight, you could add a BMI variable and then delete the height column. Your partner would need to recreate the height column by deriving values based on weight and BMI.
2. Reflect on whether your cleaned dataset is not just clean, but “tidy.” Why or why not? If not, continue transforming the dataset until it is tidy. What are the advantages and disadvantages of each version? (You can include discussion of this in your reflection in the assessment file.)
3. Explore packages outside the tidyverse that were made for the express purpose of cleaning, like `janitor`. Try to accomplish the same tasks from your tidyverse approach with functions from the other packages. You can also explore packages designed to make a mess of data (for cleaning practice), like `messy`, but be cautious about incorporating them into what you unclean for your partner. They can inject errors that require skills outside the scope of this class to clean.
4. Use the `daff` package to keep track of your progress as you work. If you choose to do this, I recommend cleaning in a .qmd rather than a script so that you can include chunks for checkpoint comparisons. See the cleaning walkthrough and Level 1 cleaning mini-project for how to incorporate daff functions.

### Repository Contents

Your repository should include (presented here in the order you will probably create each):

1. this README
2. a `core-group-submission.qmd` file with contributions from all group members
3. subdirectories for each group member including:
    1. Optional: .csv of the clean data you started with, if applicable (i.e., only needed if it was not a built-in dataset)
    2. script or notebook that un-cleans your data (removed from the .gitignore if it was added)
    3. .csv of the messy data you created
    4. partner’s script or notebook that cleans your messy data
    5. .csv of the resulting, clean dataset

**Each script/notebook should clearly specify who created it.**

### Assessment

In most cases, all group members will receive the same grade for this assignment based on the overall quality of the work and demonstration of skills.

However, each group member will complete an individual self-evaluation in the submission document (which all group members can see and hold accountability for). In cases where students transparently acknowledge differences in individual contributions, grades may be assigned individually.

All grades will be visible to all group members in the pull request. If graders have questions about individual contributions or comments they believe are better shared privately, they will reach out to individual group members over email.