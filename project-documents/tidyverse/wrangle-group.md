## Core project: Data wrangling | Let loose (anti-wrangling)

**Primary core objectives targeted: 4, 7-11**

Recommended additional objectives: 1, 2, 3, 5, 6

*Note: Some projects that center on dataset manipulation share similarity in structure. There is considerable overlap in the instructions across some mini-projects, but there are also important differences. Please read carefully.*

## Description

In this project, you will work together with a classmate to each “(un)wrangle” a dataset for the other(s) to recreate. This will work best in pairs so that you can swap datasets (I’ll refer to “partners” in these instructions), but you can adjust things to do in a small group if you prefer.

This project is similar in structure to the group cleaning mini-project. The primary difference is that in this case you are not aiming for anything clean or tidy or trying to repair your partner’s work. Instead, you are manipulating data in whatever ways you like to challenge your partner’s abilities to recognize where and how the manipulation occurred.

### Submission

Detailed submission instructions are included in the `core-group-submission.qmd` document and the [GitHub Submissions Guidelines](http://d2m-r.github.io/assessment/misc/gh-submissions.html).

**Option 1 (Recommended): Dedicated repo in the D2M-R organization**

1. One group member creates a **private** repo in the D2M-R organization and invites all group members and instructors as collaborators with Write+ permissions.
2. All group members clone the repository to their local machines.
3. Each group member should make their contributions to the document in their own branches.
    1. Recommended: In addition to working in their own branches, each group member should create a dedicated subdirectory for their data and initial code.
4. One group member copies the `core-group-submission.qmd` doc from `student-hub/templates` into the top level of your repo, and all group members complete it in full.
5. Initiate a `feedback` branch and pull request for instructor grading.

**Option 2: GitHub Classroom Assignment**

1. Designate one person to be the "leader." The leader accepts the GitHub Classroom Assignment and creates your "Team."
2. All other group members join the team through the assignment link.
3. Each group member should make their contributions to the document in their own branches.
    1. Recommended: In addition to working in their own branches, each group member should create a dedicated subdirectory for their data and initial code.
4. Complete the `core-group-submission.qmd` doc in the top level of your repo.
5. Comment on the auto-generated `feedback` branch's pull request when ready for grading.

**For either option:**

**Your work is not submitted until one group member has completed the** [Submission Form](http://d2m-r.github.io/submit.html) **on behalf of the group, including all group member names and GitHub usernames.**

## Instructions

1. Each partner should select a publicly available dataset. You can use the `data()` function to view a list of dataframes loaded with base R. Some packages contain additional example dataframes to explore.
2. In an .R script or .qmd notebook in your subdirectory of the repo, transform your selected dataframe however you like. **Do not share this file with your partner.**
    1. Avoid letting your partner see the script early by (temporarily) adding the file(s) to your .gitignore.
    2. Your resulting dataset does not need to be clean, tidy, messy, long, wide, or anything else. It simply needs to be transformed. Write out your final dataset to a .csv file.
    3. Limit your transformation to tidyverse functions or other functions we have discussed in class. You may use functions from other packages if and only if you give your partner advance warning and the opportunity to decline.
    4. Use comments (.R files) and/or markdown text (.qmd notebooks) to explain the steps you're taking.
3. Write your transformed data to a .csv file in the subdirectory, commit, and push to the shared repo.
    1. You may choose to provide your partner with a `read_csv()` function to use for importing your file. There are a few reasons why you may want to have control over exactly how the import process happens, but this is particularly useful if you want your columns to be read in as specific data types. Look at the structured data wrangling exercises for examples of this.
4. In an .R script or .qmd notebook, recreate your partner's transformed dataset. This is basically your own custom version of the structured leveled data wrangling/recreation mini-projects. You can copy that structure entirely if it's helpful.
    1. Include this .R/.qmd in the same subdirectory as the transformed data being recreated.
    2. Begin with reading in the original dataset and the goal dataset from your partner's .csv. (Use their `read_csv()` function if they provided you with one.)
    3. In comments or markdown, note what changes you notice and make a plan for how to recreate them.
    4. Make the changes! Get as close as you can to your partner's transformed dataset, and note where you weren't able to match it.
5. Commit changes and push *all* scripts and notebooks to the shared repo (remove them from the .gitignore if you added them).
6. Discuss the process with your partner after you have both finished your recreations. Did you miss anything? Did you use similar or different approaches for each aspect of wrangling? Is either the original or transformed dataset tidy? If not, was there a point in your transformation process where it was?

Your transformation can be in either a script or notebook. However you decide to approach the task, your transformation should minimally:

1. Load required libraries
2. Set a random seed
3. Use tidyverse functions to transform a publicly available dataset
4. Write the transformed dataset to a .csv file to share with your partner/group.

### Challenge suggestions

To make things trickier, show more advanced skills, or earn enrichment points, try one or more of the following:

1. Incorporate relatively more complex transformations that create puzzles for your partner. For example, if the original data has variables height and weight, you could add a BMI variable and then delete the height column. Your partner would need to recreate the height column by deriving values based on weight and BMI.
2. Use the `daff` package to keep track of your progress as you work. If you choose to do this, I recommend cleaning in a .qmd rather than a script so that you can include chunks for checkpoint comparisons. See the cleaning walkthrough and Level 1 cleaning mini-project for how to incorporate daff functions.
3. Keep swapping data. After you and your partner have matched either other’s wrangled dataset, keep going to transform it even more and swap back. See how many rounds you can go before things get irreproducible.
4. With your partner’s permission, include functions from outside the tidyverse. Your scripts should still primarily use tidyverse functions and, ideally, perform the transformation in a single pipeline (even the non-tidyverse functions).
5. Work with multiple datasets to practice transforming with the “combining data” set of functions, in particular the `join` family of functions. You may need to search outside the preinstalled R datasets to find 2 datasets suitable for joining. You could also begin with one dataset, break it in two, transform each a little, then join them back together.

**Be sure to use frequent, informative comments and/or markdown text to explain decision-making and procedure for transforming both datasets.**

### Repository Contents

Your repository should include (presented here in the order you will probably create each):

1. this README
2. a `core-group-submission.qmd` file with contributions from all group members
3. subdirectories for each group member including:
    1. Optional: .csv of the original data you started with, if applicable (i.e., only needed if it was not a built-in dataset)
    2. script or notebook that transforms your original data (removed from the .gitignore if it was added)
    3. .csv of the transformed data you created
    4. partner's script or notebook that recreates your transformed data
    5. .csv of the resulting, recreated dataset

**Each script/notebook should clearly specify who created it.**

### Assessment

In most cases, all group members will receive the same grade for this assignment based on the overall quality of the work and demonstration of skills.

However, each group member will complete an individual self-evaluation in the submission document (which all group members can see and hold accountability for). In cases where students transparently acknowledge differences in individual contributions, grades may be assigned individually.

All grades will be visible to all group members in the pull request. If graders have questions about individual contributions or comments they believe are better shared privately, they will reach out to individual group members over email.