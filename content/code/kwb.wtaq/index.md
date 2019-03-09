+++
title = "kwb.wtaq"
date = 2016-07-12T01:11:21+01:00
draft = false

authors = ["sonnenberg", "rustler"]
# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["r", "rstats", "modelling", "groundwater modelling", "drawdown model", "optiwells2", "shiny app"]

tools = ["zenodo"]

apps = ["wtaqWeb"]

# Project summary to display on homepage.
summary = "Interface to [WTAQ](http://water.usgs.gov/ogw/wtaq/) Drawdown Model"

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
# links = [{icon_pack = "fab", icon="twitter", name="Follow", url = "https://twitter.com"}]

links = [{icon_pack = "ai", icon="doi", name="Zenodo", url = "https://doi.org/10.5281/zenodo.154111"},
{icon_pack = "fas", icon="book", name="Documentation", url = "http://kwb-r.github.io/kwb.wtaq"},
{icon_pack = "fab", icon="r-project", name="R Package", url = "https://github.com/KWB-R/kwb.wtaq"}, 
{icon_pack = "fas", icon="copyright", name="MIT License", url = "https://github.com/KWB-R/kwb.wtaq/blob/master/LICENSE"},
{name = "Related App", url = "app/wtaqWeb/"},
]


# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
[image]
  # Caption (optional)
  caption = ""

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++

### Interface to [WTAQ](http://water.usgs.gov/ogw/wtaq/) Drawdown Model

Functions enabling the writing of WTAQ input files, running of WTAQ and reading 
of WTAQ output files.
