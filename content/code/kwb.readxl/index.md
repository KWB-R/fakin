+++
title = "kwb.readxl"
date = 2018-07-12T01:11:42+01:00
draft = false

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["r", "rstats", "r package", "data import", "excel", "spreadsheets", "geosalz", "test project"]

projects = ["geosalz"]

authors = ["sonnenberg"]

# Project summary to display on homepage.
summary = "Read Data From Excel Files"

# Slides (optional).
#   Associate this page with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references 
#   `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides = ""

# Optional external URL for project (replaces project detail page).
external_link = ""

# Links (optional).
url_pdf = ""
url_code = "https://github.com/KWB-R/kwb.readxl"
url_dataset = ""
url_slides = ""
url_video = ""
url_poster = ""

# Custom links (optional).
#   Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
# links = [{icon_pack = "fab", icon="twitter", name="Follow", url = "https://twitter.com"}]

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
[image]
  # Caption (optional)
  caption = ""

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++

**Read Data From Excel Files** 

This package is based on the package [readxl](https://readxl.tidyverse.org/). It provides functions that read all Excel sheets as pure text and then try to split each sheet into a set of line ranges that are assumed to represent single tables.