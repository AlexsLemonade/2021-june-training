---
title: Workshop Materials
nav_title: Materials
---

### Github Repositories

CCDL training materials are available on Github, in either this repository or our shared [training-modules repository](https://github.com/AlexsLemonade/training-modules).

### Slides

PDF versions of the slides we present in this workshop can be found in the [slides directory]({{site.repository_url}}/tree/master/slides) of the `{{site.repository}}` repository, and are also linked to directly from the [schedule](SCHEDULE.md).

### Module Structure

In the `training-modules` repository, each individual module is in found a subfolder of the main page, along with folders containing cheat sheets and setup instructions.

In this training workshop, we will be using the following modules:

<!--List the specific modules you will be using and use permalinks to a specific release-->

- [Intro to R and the Tidyverse](https://github.com/AlexsLemonade/training-modules/tree/{{site.release_tag}}/intro-to-R-tidyverse)
- [scRNA-seq](https://github.com/AlexsLemonade/training-modules/tree/master/scRNA-seq), which includes pathway analysis material


The layout of the `training-modules` folders follow a common general structure.

<img src="https://github.com/AlexsLemonade/training-modules/raw/{{site.release_tag}}/module_structure_detail.png" alt="Module Structure" width="600">

In these folders, you will notice that there may be two or three versions of some notebook files.
For example, there may be a `01-intro_to_base_R-live.Rmd`, a `01-intro_to_base_R.Rmd`, and a `01-intro_to_base_R.nb.html`.
- The version with `-live.Rmd` at the end is an incomplete version of the notebook, missing some code that will be filled in during the workshop.
- The `.Rmd` file (with no `-live`) is a fully completed version of the notebook, useful for reference in case you might have missed any steps during the workshop.
- The `.nb.html` version of the file is a rendered web page of the notebook.
This file can be downloaded or viewed via the links in the README file that you will see at the bottom of file listing for each module.

Cheatsheets that review key functions and concepts are found in the [module-cheatsheets folder](https://github.com/AlexsLemonade/training-modules/tree/{{site.release_tag}}/module-cheatsheets).
These are formatted both as markdown files and PDFs, with the latter likely most useful for reference.

### RStudio Server

Notebooks and data files required for participation in the workshop will be preloaded for each user on the RStudio server.
