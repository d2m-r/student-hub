## Core project: Data reporting | Explore and report (Semi-structured)

**Primary core objectives targeted: 1, 3, 7, 8, 12**

Recommended additional objectives: 4, 9-11

*Note: This semi-structured project provides more independence than the structured descriptive statistics exercise. Students select their own research questions and determine appropriate analyses.*

### Submission

This project must be completed **individually**.

Completing through the GitHub Classroom assignment is recommended. Alternatively, you may choose to create a dedicated repo within the D2M-R organization.

Detailed submission instructions are included in the `core-submission.qmd` document and the [GitHub Submissions Guidelines](http://d2m-r.github.io/assessment/misc/gh-submissions.html).

**Reminder:** Your work is not submitted until you have completed the [Submission Form](http://d2m-r.github.io/submit.html).

## Description

In this project, you will explore a published dataset and produce a data report that includes descriptive statistics and visualizations. Unlike the structured exercise, you will make your own decisions about what to explore, which variables to examine, and how to present your findings.

You can either find publicly available data to use or use the same data from the structured data exercise.

You are free to use any dataset meeting the following criteria:

- Publicly available (your .qmd should include a link to the dataset)
- Includes variables of multiple data types, including both continuous and categorical data
- Is **not** the dataset for your integrative data project

Before committing to a dataset, take some time to be sure the data are clean enough to work with. You can use this project as an opportunity to showcase cleaning and wrangling skills, but you don’t want to find yourself in so deep that you don’t have time to focus on the data reporting.

Alternatively, you can use provided data. This is a published, open-access dataset capturing relationships between math anxiety and self-perception:

*Mackinnon, S. P., McCaughey, N., & Hill, T. G. (2024, July 25). The Association of Self-Efficacy, Anxiety Sensitivity, and Self-Critical Perfectionism with Statistics and Math Anxiety.* https://doi.org/10.17605/OSF.IO/NZHQ6*

You can access the full dataset and codebook [here](https://osf.io/nzhq6/). The data you will need is included in the .csv file within this project's directory.

**Before beginning your analysis,** familiarize yourself your the dataset using the codebook. Understand the different categories of variables, their measurement scales, and how they can be interpreted.

## Objectives

Your data report should accomplish the following:

1. **Data preparation:** Load and prepare the data for analysis, including appropriate data type conversions and handling of missing values
2. **Descriptive statistics:** Calculate and present summary statistics (measures of center, spread, and distribution) for variables of interest
3. **Visualization:** Create clean, interpretable figures that reveal patterns in the data
4. **Interpretation:** Provide clear narrative that contextualizes your findings and connects them to potential research questions

## Requirements

Your project should include:

### Data Preparation

- Appropriate data type conversions based on the codebook
- Thoughtful handling of missing data
- Reshaping data as needed for analysis and visualization
- Clear documentation of any data cleaning decisions

### Statistical Summaries

Create **at least two** summary tables that include:

- Appropriate measures of center and spread
- Grouping by at least one categorical variable
- Professional formatting (e.g., using flextable with APA theme or similar)
- Informative captions

### Visualizations

Create **at least three** figures that:

- Show distributions of variables (e.g., histograms, violin plots, density plots)
- Reveal relationships between variables (e.g., scatterplots, grouped comparisons)
- Use appropriate scales and labels
- Include informative captions (in the plot or the chunk)
- At least one figure should incorporate grouping by a demographic or categorical variable.

### Narrative and Interpretation

Write a brief narrative report for your analysis. Your report should include:

- **Introduction:** Brief context for the dataset and your analytic approach
- **Methods:** Description of any data preparation steps and decisions
- **Results:** Presentation and interpretation of summary statistics and visualizations
    - (Optional) Use Quarto cross-references to refer to tables and figures
    - Describe patterns you observe in the data
    - Note any unexpected findings or limitations
- **Discussion:** Reflection on what the descriptive statistics reveal about potential research questions

This really can be *brief.* The intro, methods, and discussion don’t need to be more than a paragraph each if that’s all you have to say. The results should clearly describe and interpret the analyses and visualizations, but does not need to be sophisticated.

You should use your Quarto document to interweave narrative text and code. Optionally, you can include some code in separate .R scripts that create intermediate datasets and/or pre-process data when sourced in an early code chunk with `source()`.

## Suggested Approaches

You have considerable freedom in how you approach this project. Consider:

### Variable Selection

- Focus on a subset of survey scores that seem theoretically related
- Explore relationships between demographic variables and outcomes
- Compare distributions across different subgroups
- Examine patterns within item responses if you choose to retain them

### Analytic Strategies

- Examine distributions separately by demographic subgroups
- Create composite or derived variables
- Explore non-obvious relationships between variables
- Use long format data to facilitate grouped summaries and visualizations

### Advanced Options

**To demonstrate higher-level skills or initiative, consider:**

1. Creating particularly sophisticated or informative visualizations (e.g., multi-panel figures, heatmaps, complex grouped plots)
2. Calculating additional descriptive statistics beyond basic measures (e.g., confidence intervals, effect sizes, percentile ranks)
3. Exploring relationships through correlation matrices and visualizations
4. Implementing advanced data transformations or feature engineering
5. Creating an integrated narrative that tells a coherent story through multiple related analyses

## Structure and Organization

Create your report in a `.qmd` file with:

- Informative chunk labels throughout
- Clear section headings that organize your analysis
- Comments explaining non-obvious code decisions
- Markdown text providing context and interpretation
- Appropriate figure and table captions
- Cross-references to figures and tables in your narrative

**Your code should be reproducible:** Anyone should be able to run your `.qmd` file from start to finish and reproduce your results.