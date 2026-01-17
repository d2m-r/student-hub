# Student Hub Repository

This repository contains course materials, demonstrations, project scaffolds, and templates for Data to Manuscript in R.

## Getting Started

### Clone the Repository

**Using RStudio (recommended):**

1. In RStudio, go to **File > New Project > Version Control > Git**
2. Paste the repository URL: `https://github.com/d2m-r/student-hub.git`
3. Choose a directory name (default: `student-hub`)
4. Select where to save the project on your machine
5. Click **Create Project**

RStudio will clone the repository and open it as a new project.

**Using command line:**

If you prefer the terminal, clone first then open as an RStudio project:

```bash
git clone https://github.com/d2m-r/student-hub.git
```

Then in RStudio: **File > Open Project** and navigate to the cloned `student-hub` directory, selecting the `.Rproj` file. If no `.Rproj` file exists, use **File > New Project > Existing Directory** instead.

### Pull Updates

The repository will be updated throughout the quarter with new materials. Sync your local copy regularly, including before interacting with any files (e.g., following in-class demos, copying a submission template).

**Using RStudio:**

1. Open your student-hub project
2. In the **Git pane**, click the blue **Pull** button (down arrow)
3. RStudio will fetch and merge the latest changes

**Using command line:**

```bash
cd student-hub
git pull origin main
```

**If you encounter merge conflicts:**

Merge conflicts occur when you've modified a file locally that has also been updated in the remote repository. This should be rare if you're only pulling from this repository and not editing its files directly.

1. RStudio will flag conflicted files in the Git pane with an orange "U" (unmerged).
2. Open the conflicted file. Git marks conflicts with `<<<<<<<`, `=======`, and `>>>>>>>` markers.
3. Decide which version to keep (or manually combine them), then delete the conflict markers.
    1. To avoid continued conflicts with the same content, never remove the remote (pulled) version. If you want to keep the local content, keep both.
4. In the Git pane, check the box next to the resolved file to stage it.
5. Commit the resolution with a message like "Resolve merge conflict".

**Prevention:** Avoid editing files in the student-hub repository directly. Instead, copy materials to your own repository or create a personal branch to work in (instead of `main`).

## Repository Structure

Contents will be updated throughout the quarter and structure may change. Pull often!

### `data/`

Contains example datasets used in class demonstrations and exercises. Each dataset includes a companion README explaining its structure and variables.

### `demos/`

Instructor-created code demonstrations covering key course concepts. Includes both R scripts and Quarto documents showing complete workflows.

### `project-documents/`

Scaffolded project assignments organized by topic:

- **data-reporting/**: Projects focused on creating reproducible reports
- **r-programming/**: Foundational programming exercises
- **tidyverse/**: Data cleaning and wrangling tasks
- **version-control/**: Git and GitHub collaboration exercises
- **other/**: Contribution assignments and supplementary projects

Each subdirectory contains starter files, instructions, and supporting materials.

### `templates/`

Submission templates for different assignment types. Copy them into your project’s repo before completing the them. **Do not edit these within your student-hub repo.** 

- `core-submission.md`: Individual core assignments
- `core-group-submission.md`: Group core assignments
- `data-project-submission.md`: Data analysis projects
- `enrichment-submission.md`: Enrichment activities

## Workflow Tips

- **Don’t modify files in the `main` branch:** Create a personal branch for your work
    - *Note:* This is just for you to avoid merge conflicts in your local clone. You don’t have to worry about potentially changing the actual student-hub repo (you literally cannot).
- **Keep your work separate**: Copy templates and project files to your own repository or workspace
- **Watch for updates**: Check for announcements about new materials added to the repository
- **Read the READMEs**: Most directories contain additional documentation