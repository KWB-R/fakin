+++
title = "kwb.hantush"
date = 2019-02-12T01:11:20+01:00
draft = false

authors = ["rustler"]

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["r", "rstats", "infiltration basin", "groundwater mounding", "modelling", "groundwater modelling", "demeau", "shiny app", "support project"]

# Project summary to display on homepage.
summary = "Calculation of Groundwater Mounding Beneath an Infiltration Basin"

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
links = [{icon_pack = "ai", icon="doi", name="Zenodo", url = "https://doi.org/10.5281/zenodo.595401"},
{icon_pack = "fas", icon="book", name="Documentation", url = "http://kwb-r.github.io/kwb.hantush/dev"},
{icon_pack = "fab", icon="r-project", name="R Package", url = "https://github.com/KWB-R/kwb.hantush"}, 
{icon_pack = "fas", icon="copyright", name="MIT License", url = "https://github.com/KWB-R/kwb.hantush/blob/master/LICENSE"},
{name = "Related App", url = "app/hantush/"},
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

### Calculation of Groundwater Mounding Beneath an Infiltration Basin

Calculation groundwater mounding beneath an infiltration basin based on the 
[Hantush (1967)](http://doi.org/10.1029/WR003i001p00227) equation. 
The correct implementation is shown with a verification example based on a USGS
report ([page 25](http://pubs.usgs.gov/sir/2010/5102/support/sir2010-5102.pdf#page=35)).
