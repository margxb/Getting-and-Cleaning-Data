---
title: "README.md"
author: "You!"
date: "7/7/2021"
output: html_document
---

The script in run_analysis.R reads in the training and testing for x, y and subject.

The next step combines the rows for the test and training datasets for x, y and subject.

The features.txt file is read in to name the columns for the different variables.

The activity names are read in and merged with the y dataset.

The column names are set for the different datasets.

All the line datasets are then merged into a single file, and then only the Subject_ID, Activity_ID, Activity_Name, and the Standard deviations/Mean Values are selected.

The dataset is grouped and average values are calculated for each Subject/Activity group.

The dataset includes the following files:

-'README.md'
-CODEBOOK
-final_df.txt : final table calculating average values for every variable for every subject/activity grouping
-run_analysis.R: script run to create analysis and final files
