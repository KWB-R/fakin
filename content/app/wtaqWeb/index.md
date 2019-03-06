+++
title = "App: wtaqWeb"
date = 2018-07-12T00:00:00+01:00
draft = false

authors = ["rustler"]
# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["r", "rstats", "groundwater modelling", "drawdown model", "optiwells2", "shiny app", "mybinder", "publication"]
# Project summary to display on homepage.
summary = "Calculation of Groundwater Drawdown Beneath an Abstraction Well"

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
url_code = ""
url_dataset = ""
url_slides = ""
url_video = ""
url_poster = ""

# Custom links (optional).
#   Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
links = [
{name = "App", url = "https://mybinder.org/v2/gh/kwb-r/apps/wtaqWeb?urlpath=shiny"}, 
{icon_pack = "fas", icon="code", name = "Code", url = "https://github.com/KWB-R/apps/tree/wtaqWeb"}, 
{icon_pack = "fas", icon="copyright", name="MIT License", url = "https://github.com/KWB-R/apps/blob/wtaqWeb/LICENSE.txt"}, 
{icon_pack = "fab", icon="r-project", name="Related R Package", url = "code/kwb.wtaq/"}
]

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
[image]
  # Caption (optional)
  caption = "Screenshot of Shiny App (deployed using [mybinder.org](https://mybinder.org/)"

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++

### Calculation of Groundwater Drawdown Beneath an Abstraction Well

The drawdown calculation is performed with USGS model [WTAQ](https://water.usgs.gov/ogw/wtaq/). 
For creating the [WTAQ](https://water.usgs.gov/ogw/wtaq/) input files, running the model and reading the output files the R package 
[kwb.wtaq](code/kwb.wtaq/) is used.

The [app](https://mybinder.org/v2/gh/kwb-r/apps/wtaqWeb?urlpath=shiny) 
is deployed using the free service [mybinder.org](https://mybinder.org/).