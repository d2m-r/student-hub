## Core project: git-github | Schelling Games repo contribution

**Primary objectives targeted: 1, 2**

See additional guidelines for demonstrating [Objective 1 (Workflow)](http://d2m-r.github.io/assessment/misc/workflow-assessment.html) and [Objective 2 (Git/GitHub)](http://d2m-r.github.io/assessment/misc/gh-assessment.html) on the course site.

**Recommended additional objectives: 3-12 and/or enrichment points**

This project is ideal for demonstrating *any* of the core objectives at *any* level, because you can contribute to any part of the Schelling Games project (data wrangling, analysis, visualization, manuscript writing, documentation, etc.).

## Description

The Schelling Games project is an open-source research repository hosted on GitHub that demonstrates a complete data-to-manuscript workflow. The repository includes raw and processed data, analysis scripts, visualizations, and a manuscript exploring coordination games and strategic behavior.

For this core project, you will make one or more contributions to the Schelling Games repository. Contributions can be large or small, technical or editorial, data-focused or manuscript-focused. What matters is demonstrating solid Git/GitHub workflow practices in the context of contributing to an open-source project.

*Note:* This project uses a fork-and-pull-request workflow typical of open-source projects, which differs from the GitHub Classroom workflow you use for other assignments.

## About the Schelling Games Repository

**Repository URL:** [**](github.com/d2m-r/schelling-games)[github.com/d2m-r/schelling-games**](http://github.com/d2m-r/schelling-games**) *(or similar - check course site for exact URL)*

The repository is organized as a complete research project with data collection, wrangling, analysis, visualization, and manuscript preparation. It serves as both a learning resource and a sandbox for students to practice contributing to collaborative research projects.

**Repository:** [github.com/d2m-r/schelling-games](http://github.com/d2m-r/schelling-games)

## Instructions & Submission

This project uses a different submission workflow than other assignments since you're contributing to a shared public repository rather than creating your own private repo. **Read all instructions closely before beginning to avoid confusion and introducing hard-to-repair GitHub problems.**

To keep things as clean as possible, the submission instructions are included as part of the general instructions rather than at the end of this document.

**You may approach this as an individual or group project.** If you are working with a partner or group, begin by assigning one student the role of "Leader." When something in the instructions below should be completed by only one student, the leader should do so.

### 1. Fork the repository

Navigate to the Schelling Games repository and create your own fork. This creates a copy of the repo under your GitHub account that you can freely modify.

**Important:** Forked repos necessarily have the same permissions as the original repo, meaning **your fork will be public.** Do not include anything (in content, commit messages, pull requests, issues, or anything else) you aren't ok with others seeing if they go looking for it.

**Group:** Leader creates fork and invites other students as collaborators with Write+ access, which allows them to accept pull requests.

### 2. Accept and set up the [Schelling Games Contribution GH Classroom assignment](https://classroom.github.com/a/39IEagXo).

Copy the `core-submission.qmd` document into the top level of the Schelling Games Contribution assignment repo, renaming the file: `core-submission-schelling.qmd`.

**Group:** Leader accepts the assignment on behalf of the group, adding all group members to the "Team." Use the `core-group-submission.qmd` document instead.

### 3. Clone your fork locally & create feature branch(es)

Clone your forked repository to your local machine and open it as an RStudio project. You'll be working in your fork, not the original repo.

Create a new branch for your contribution(s). Use a descriptive name that indicates what you're working on (e.g., `add-correlation-plot`, `clean-missing-data`, `expand-methods-section`, `improve-readme`).

**Group:** Students contribute to the project using a similar workflow to what is described in the Collaborative Repo project, making contributions to the Schelling Games fork using branches and pull requests.

### 4. Make your contribution(s)

Make any changes you'd like to contribute. Contributions can include:

**Editorial contributions:**

- Fixing typos, grammar, or punctuation in the manuscript or documentation
- Improving clarity or readability of code comments
- Correcting technical errors in analysis or interpretation
- Adding or improving documentation (README, codebook, methods notes, etc.)

**Data contributions:**

- Cleaning or validating data in the raw or processed datasets
- Creating new derived variables or data transformations
- Documenting data sources, variables, or collection methods
- Identifying and addressing data quality issues

**Analysis contributions:**

- Adding new statistical analyses or models
- Improving existing analysis code for efficiency or clarity
- Creating new visualizations or improving existing figures

**Manuscript contributions:**

- Expanding or improving sections of the manuscript
- Adding bibtex citations or references to relevant literature
- Creating or improving tables and figures

**Technical contributions:**

- Improving code organization or structure
- Adding code comments or annotations
- Making scripts more reproducible or generalizable
- Fixing bugs or rendering issues

**Any other improvements** you think would make the project more useful, accurate, reproducible, or engaging.

There is no minimum or maximum contribution size. A single-character typo fix using proper Git workflow is just as valid as adding an entire new analysis with visualizations. What matters is the quality of your process, not the magnitude of your changes.

### 5. Commit your changes

As you work, make frequent commits with clear, descriptive commit messages. Each commit should represent a logical unit of work. If you're making multiple unrelated changes, commit them separately.

### 6. Push to your fork

Push your feature branch to your forked repository on GitHub.

**Group:** Push work in your branch on your local machine back to your fork. Create pull requests from your branch to the fork. Review and approve group members' PRs as they come in. Note that *everyone* should create and review pull requests, not just the leader.

### 7. Complete the submission document in the GH assignment

In the Schelling Games Contribution assignment, complete the `core-submission-schelling.qmd` file you created in full, including AI attestation, commit changes, and push to GitHub.

**Group:** All group members should contribute to the `core-group-submission-schelling.qmd` file after the leader has created it. As with other group repo assignments, each student creates a branch to make their edits and then initiates a PR to merge all members' changes.

### 8. Create a pull request *for the Schelling Games repo*

From your d2m-r/schelling-games fork, create a pull request to the original Schelling Games repository. Your PR should:

- Have a clear, descriptive title
- Include a description explaining what you changed and why
- Reference any relevant issues (if applicable)
- Be from your feature branch to the main repository's `main` branch

After creating the PR, add a comment tagging the instructors to indicate this is a course submission.

**Group:** The leader should create the PR, tagging all other group members (in addition to the instructors).

### 9. Comment on the pull request *for submission docs GH assignment*

From the GH Classroom Schelling Games Contribution assignment, comment on the pull request for the auto-generated `feedback` branch (similar to any other GH Classroom assignment: [instructions here](http://d2m-r.github.io/assessment/misc/gh-submissions.html)). **Take note of this PR's URL; this is what you will submit in the Submission form.**

**Group:** The leader should create the initial comment, tagging all other group members. Other group members may add additional comments if desired.

### 10. Complete and submit the Submission Form

Submit your assignment with the [Project Submission Form](https://www.notion.so/nrdowling/d2m-r.github.io/submit.html). Use the pull request URL of **the GH assignment feedback branch** (where you will get grades)**.** Use the message-to-grader field to link to the fork-to-main repo pull request, or other public content that will be evaluated.

If you are making contributions to a public repository, you will be prompted to make revisions or additional comments on that public pull request, but **all grade assignment and grading-relevant feedback** will be made on the pull request within this private repo.

**Group:** The leader should submit the form on behalf of the group. In the form, include names and github usernames for all members. In the message-to-grader field, note who served as group leader.

### 11. Respond to feedback

The instructors may provide feedback on your pull request through code review comments. If changes are requested:

- Make the requested changes in your local branch
- Commit and push the updates to your fork
- Your pull request will automatically update with the new commits
- Respond to review comments to acknowledge feedback

*Note:* Not all contributions will necessarily be merged into the Schelling Games project, but all contributions that demonstrate solid Git/GitHub skills will receive credit. The instructor reserves the right to request modifications before merging or to decline contributions that don't fit the project's scope—this does not affect your grade. You can still get 6-points for GitHub skills and potentially substantial enrichment points even if your changes don't make it into the main repository.

While in most projects there will be opportunity to revise and resubmit, projects like this that involve substantive contributions to shared work will almost certainly involve back-and-forth between collaborators (i.e., you and one or more instructors). You should consider that process to be part of the project, demonstrating advanced GitHub skills at a 6-point level.

### Challenge suggestions

While any properly-executed contribution earns credit for Core Standard 2, you can demonstrate additional skills and potentially earn enrichment points by:

1. Making substantial analysis or manuscript contributions that demonstrate deep understanding of course material and research methods (may show mastery of objectives 3-12 depending on content)
2. Contributing multiple distinct improvements in separate, well-organized commits and/or pull requests
3. Creating sophisticated data visualizations using ggplot2 with custom themes, annotations, or complex aesthetics
4. Implementing new statistical models or analyses that extend the project's research questions in substantive ways
5. Adding substantial manuscript content with proper APA formatting, citations, and academic writing
6. Improving the repository's reproducibility (e.g., adding documentation, improving code organization, creating helper functions)
7. Engaging meaningfully with other students' pull requests by reviewing their contributions and providing constructive feedback
8. Identifying and documenting issues in the project using GitHub Issues before (or instead of) submitting fixes

Many of these challenges show independent learning for D2M-R I and can earn enrichment points, but *core skills* for D2M-R II. If you're not sure about where your work will "count," ask Dr. Dowling.

## Submission

As noted above, submission instructions are baked into the rest of the instructions above. A few reminders:

1. Review the [GitHub Submissions Guidelines](http://d2m-r.github.io/assessment/misc/gh-submissions.html), though pay attention to the instructions on this page to know when to apply these guidelines.
2. Your work is not submitted until you (or the group leader) has completed the [Submission Form](https://www.notion.so/D2M-R-Git-GitHub-29f7b904f28d8082bbaff724b235a539?pvs=21). For groups, include all group member names and usernames in the submission.
3. You should follow and respond to feedback about the contribution itself before merging on the pull request you created between your fork and the main Schelling Games repository.
4. You will receive grades after the main pull request has been accepted or rejected. All grades and grade-related comments will be included in the GH Schelling Games Contribution pull request, visible only to you (and your group).

## Assessment

This project necessarily demonstrates Core Standard 2 (Git & GitHub). All students who complete a contribution using proper fork-and-PR workflow with clear commits and a well-documented pull request will earn credit toward this standard.

The content, size, or complexity of your contribution does not directly determine your grade. A one-line typo fix can earn the same credit as a complete new analysis if both demonstrate proper Git workflow. However, more substantial or technically sophisticated contributions provide opportunities to demonstrate mastery of additional objectives and may earn enrichment points.

Grading will consider:

- Quality of Git workflow (branching, commits, PR documentation)
- Responsiveness to feedback and ability to iterate
- Value added to the Schelling Games project (even small improvements count!)
- Additional skills demonstrated through the nature of your contribution

**Group work:** In most cases, all group members will receive the same grade for this assignment based on the overall quality of the collaborative repository and the demonstration of Git/GitHub skills.

However, each group member will complete an individual self-evaluation in the submission document (which all group members can see and hold accountability for). In cases where students transparently acknowledge differences individual contributions (e.g., 2 students collaborated on data wrangling showing tidyverse skills while the other 2 did not contribute to those elements), grades may be assigned individually.

The submission form should indicate who acted as group leader. If the group collectively wishes to acknowledge that the leader went above-and-beyond or did an amount or quality of labor that deserves special recognition, they should note this in the submission doc.

All grades will be visible to all group members in the pull request. If graders have questions about individual contributions or comments they believe are better shared privately, they will reach out to individual group members over email.