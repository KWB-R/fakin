+++
title = "App: hantush"
date = 2018-12-05T00:00:00+01:00
draft = false

authors = ["rustler"]
# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["r", "rstats", "infiltration basin", "groundwater mounding", "groundwater modelling", "demeau", "shiny app", "fakin", "mybinder", "publication"]
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
links = [
{name = "App", url = "https://mybinder.org/v2/gh/kwb-r/apps/wtaqWeb?urlpath=shiny"}, 
{icon_pack = "fas", icon="code", name = "Code", url = "https://github.com/KWB-R/apps/tree/wtaqWeb"}, 
{icon_pack = "fas", icon="copyright", name="MIT License", url = "https://github.com/KWB-R/apps/blob/hantush/LICENSE.txt"}, 
{icon_pack = "fas", icon="book", name="Documentation", url = "http://kwb-r.github.io/kwb.hantush/dev/articles/shiny-app.html#english"},
{icon_pack = "fab", icon="r-project", name="Related R Package", url = "code/kwb.wtaq/"}
]


# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
[image]
  # Caption (optional)
  caption = "Screenshot of Shiny App (deployed using [mybinder.org](https://mybinder.org)"

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++

### Calculation of Groundwater Mounding Beneath an Infiltration Basin

The [app](https://mybinder.org/v2/gh/kwb-r/apps/wtaqWeb?urlpath=shiny) is deployed 
using the free service [mybinder.org](https://mybinder.org/).

**Important note:** in order to see the plot in the tab **Explore** (see 
screenshot abovce) it is necessary to enable the checkbox **Details** once after 
starting the app. 
