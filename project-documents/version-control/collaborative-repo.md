## Core project: git-github | Collaborative skeleton repo

**Primary objectives targeted: 1, 2**

See additional guidelines for demonstrating [Objective 1 (Workflow)](http://d2m-r.github.io/assessment/misc/workflow-assessment.html) and [Objective 2 (Git/GitHub)](http://d2m-r.github.io/assessment/misc/gh-assessment.html) on the course site.

**Recommended additional objectives: 3, 4, 5**

This project is ideal for demonstrating *any* of the core objectives at *any* level, because you have full flexibility over what to include in your repo’s scripts and notebooks. You can incorporate other skills into the structure of this project in whatever way you think makes sense or combine it with elements of other menu projects.

## Description

In this project, your group will collaboratively create a new "skeleton" GitHub repo. The repo can either be for practicing collaborative GitHub workflows or as a setup for an actual project you're going to work on together (other than your integrative data project).

This project focuses on demonstrating advanced collaboration skills including branch management, pull requests, code review, and resolving merge conflicts.

*Note:* By its very nature, this mini-project cannot be completed with a GitHub Classrooms assignment.

## Group Formation

Groups should have 2-4 members. All group members must contribute meaningfully and independently to the repository.

## Instructions

### Initial Setup (One group member)

1. One group member creates a **private** github repo connected to an R Project. Both the repo and project should be created for this project, though you can set it up planning ahead to use it as a functional repo beyond this submission.
    1. You may create the repo in the D2M-R organization or as a private repo under one member's account. Working in the D2M-R org is recommended in most cases.
    2. The repo creator must immediately invite all other group members as collaborators with Write+ permissions.
    3. If the repo was created outside the D2M-R organization, the creator must also invite all instructors.
2. All other group members clone the repository to their local machines.

### Collaborative Development

1. Working together, create a "skeleton" for the real or imagined research project. The skeleton should include all files and/or directories required for any repository and should *not* include files and/or directories that should not be stored or shared remotely. Create and organize files and directories that may not be required in all repositories, but are either necessary or useful in this repo.
    1. Refer to the Git/GitHub slides for information about required and recommended elements of a repo.
2. All group members should make substantial contributions to the project, demonstrating each skill they are attempting to earn credit for.
3. As you work, use git best practices:
    - Make frequent, informative commits with descriptive messages that reflect your work over time
    - Pull from `main` regularly to stay up-to-date with others' work
    - Resolve any merge conflicts that arise
    - Keep documentation up-to-date as changes are made

If you use this just for practice (vs. prepping for a real, planned project), you can make up a pretend project to structure the repo around, which does not have to be realistic. Feel free to use *lorem ipsum* text and other filler material for anything non-essential, or to go wild with details about your fictional project.

*Note:* When working collaboratively, you will encounter situations where your local and remote repos don't sync as you might expect, especially when multiple people are pushing changes. These are learning opportunities! Merge conflicts aren't bugs—they're features that help you integrate parallel work. It's your responsibility to identify what's happening and resolve conflicts appropriately.

### Collaboration Recommendations

These recommendations are not strictly necessary and will require some independent learning to figure out how they work. However, incorporating these suggestions will both make your collaborative workflow much smoother and demonstrate a higher level of GitHub mastery for all group members.

1. **Each group member should work on their own feature branch** (not directly on `main`). Branch names should clearly identify the contributor and/or feature (e.g., `maria-readme`, `john-data-structure`).
2. **Each group member should create at least one pull request** from their branch to `main`. Pull requests should:
    - Have descriptive titles and descriptions explaining what was changed and why
    - Be reviewed by at least one other group member before merging
    - Include comments from the reviewer, anything from a simple "looks good" to line-by-line constructive feedback
3. Use **GitHub Issues** to coordinate work, track tasks, or document decisions. Create at least 3 issues total as a group, and reference relevant issues in your commits and/or pull requests using `#issue-number`.

### Challenge suggestions

To show a more advanced mastery of core skills, try one or more of the following:

1. Use **protected branches** to require pull request reviews before merging to `main`.
2. Implement a more sophisticated **branching strategy** (e.g., develop branch, feature branches, release branches).
3. Create **issue templates** or **pull request templates** to standardize your workflow.
4. If your skeleton mimics a research project, center it on a single Quarto manuscript (.qmd) with contributions from multiple authors. Try incorporating advanced markdown, Quarto extensions (like apaquarto), or other post-processing tools.
5. Organize your repo for something other than a research project, like an R package, GitHub Pages website, or dissertation with multiple embedded projects. Ensure it still includes all essential repo components.
6. Use the documents in this repo to demonstrate programming or tidyverse skills. This project is ideal for demonstrating *any* of the core objectives at *any* level.
7. Document your **collaborative workflow** with screenshots showing branches, pull requests, code reviews, or resolved merge conflicts—include these in a dedicated `collaboration-docs/` folder.

## Submission

Detailed submission instructions are included in the `core-group-submission.qmd` document and the [GitHub Submissions Guidelines](http://d2m-r.github.io/assessment/misc/gh-submissions.html).

Reminders:

1. Copy the `core-group-submission.qmd` doc from `student-hub/templates` into the top level of your repo and complete in full. The group submission form is similar to to basic submission, but has important differences, so read carefully!
    1. Each group member should make their contributions to the document in their own commit.
2. Ensure you create a *private* repo. Invite all group members AND all instructors as collaborators with Write+ permissions.
3. Initiate a `feedback` branch and pull request for instructor grading.
4. Your work is not submitted until **one group member** has completed the [Submission Form](https://www.notion.so/D2M-R-Git-GitHub-29f7b904f28d8082bbaff724b235a539?pvs=21) on behalf of the group. Include all group member names in the submission.

## Assessment

In most cases, all group members will receive the same grade for this assignment based on the overall quality of the collaborative repository and the demonstration of Git/GitHub skills. 

However, each group member will complete an individual self-evaluation in the submission document (which all group members can see and hold accountability for). In cases where students transparently acknowledge differences individual contributions (e.g., 2 students collaborated on R scripts showing tidyverse skills while the other 2 did not contribute to those elements), grades may be assigned individually.

All grades will be visible to all group members in the pull request. If graders have questions about individual contributions or comments they believe are better shared privately, they will reach out to individual group members over email.