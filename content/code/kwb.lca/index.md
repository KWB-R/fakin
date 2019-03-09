+++
title = "kwb.lca"
date = 2018-07-12T01:11:44+01:00
draft = false

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["r", "rstats", "r package", "data import", "data aggregation", "data visualisation", "data export", "fakin", "life cycle assessment", "smartplant", "excel", "template", "questionaires", "spreadsheets", "test project"]

projects = ["smartplant"]

authors = ["sonnenberg"]


# Project summary to display on homepage.
summary = "Functions to Be Used in Life Cycle Assessment (LCA) Projects"

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
url_code = "https://github.com/KWB-R/kwb.lca"
url_dataset = ""
url_slides = ""
url_video = ""
url_poster = ""

# Custom links (optional).
#   Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
# links = [{icon_pack = "fab", icon="twitter", name="Follow", url = "https://twitter.com"}]
links = [
{icon_pack = "fas", icon="book", name="Documentation", url = "http://kwb-r.github.io/kwb.lca"},
{icon_pack = "fab", icon="r-project", name="R Package", url = "https://github.com/KWB-R/kwb.lca"}, 
{icon_pack = "fas", icon="copyright", name="MIT License", url = "https://github.com/KWB-R/kwb.lca/blob/master/LICENSE"},
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

# Functions to Be Used in Life Cycle Assessment (LCA) Projects

This package contains a function to read LCA parameters from an Excel file that was sent to and received from a project partner. The parameters are read into a data frame. Another function can be used to write the dataframe into an Excel file with different sheets and data.