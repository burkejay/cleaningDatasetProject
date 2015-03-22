---
title: "README"
author: "Jay Burke"
date: "March 21, 2015"
output: html_document
---
- Burke Averages & STDs: Version 0.1
- UCI's Human Activity Recognition Using Smartphones Dataset, by UCI: Version 1.0 activityrecognition@smartlab.ws

## Overview

This README describes a package for converting the UCI HAR Dataset of test data from Samsung Galaxy S phones into a tidy dataset of averages and standard deviations of all of the measurements taken during the experiment.

### Contents

- run_analysis.R : an R script that does the conversion of the UCI HAR dataset into a tidy dataset of averages and standard deviations.  Its output is the file "Means.txt". The entire conversion was done in a single script file.
- README.md: This file, describing the contents of the package and the justification of tidyness.
- codebook.md: A codebook that describes the contents of "Means.txt", which is the tidy dataset outputted by the run_analysis.R script.
- Means.txt: A tidy dataset of the averages and standard deviations of all the measurements made during experiments with the Samsung Galaxy Phone done by UCI.  The format of this file meets the requirements for a tidy dataset based on the principle of 1 variable per column and 1 observations per row.  By my understanding of what should be considered a variable, I have 1 variable per column.  This has led to my dataset being a wide dataset, which has been justified in David Hood's extended project description in the class forum.   David is considered a Community TA for this class and specifically writes that the "marking rubric ... accepts wide or long." He writes:

> The purest tidy for is a little difficult to say, since we don't have a specific problem to apply it to, but it hinges a little on what a "variable" is- are the variables independent measurements of activity/subject actions (the form the data comes in), or are they members of a set of measurements variables (in a similar way that each activity is a member of the set of activities, as in the diagram, upthread)

> Depending on the interpretation, this could support either data in the wide (first) or the long form (second) being in tidy format, and the marking rubric specifically accepts wide or long. In previous sessions most people were opting for wide.*

> *David Hood, "Tidy data and the Assignment"", Forum/Course Project, Getting and Cleaning Data, copied on 3/21/2015.