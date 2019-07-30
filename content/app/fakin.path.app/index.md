+++
title = "App: pathana"
date = 2019-07-30T00:00:00+01:00
draft = false

authors = ["sonnenberg"]
# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["r", "rstats", "data visualisation", "shiny app", "fakin", "mybinder", "publication", "path analysis"]

tools = ["mybinder"]

projects = ["fakin"]

code = ["fakin.path.app"]

# Project summary to display on homepage.
summary = "R Shiny Application For Path Analysis"

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
{name = "App", url = "https://mybinder.org/v2/gh/kwb-r/apps/3cc09c4adbca2c10fa549614def114891ad0667c?urlpath=shiny"}, 
{icon_pack = "fas", icon="code", name = "Code", url = "https://github.com/KWB-R/apps/tree/fakin.path.app"}, 
{icon_pack = "fas", icon="copyright", name="MIT License", url = "https://github.com/KWB-R/apps/blob/fakin.path.app/LICENSE.txt"}, 
{icon_pack = "fas", icon="book", name="Documentation", url = "https://kwb-r.github.io/fakin.path.app/"},
{icon_pack = "fab", icon="r-project", name="Related R Package", url = "code/fakin.path.app/"}
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


### Pathana: an interactive tool for path analysis

This R Shiny App loads file path information from a file and displays the paths in different ways. The aim of the app is to find weaknesses in the folder structure.

The [app](https://mybinder.org/v2/gh/kwb-r/apps/3cc09c4adbca2c10fa549614def114891ad0667c?urlpath=shiny) 
is deployed using the free service [mybinder.org](https://mybinder.org/).