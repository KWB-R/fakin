+++
title = "fakin.path.app"
date = 2019-07-30T00:00:00+01:00
draft = false

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["r", "rstats", "data visualisation", "shiny app", "fakin", "mybinder", "publication", "path analysis"]

tools = ["r", "rstudio", "github", "mybinder"]

# Project summary to display on homepage.
summary = "Source code for the interactive path analysis app developed within FAKIN"

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
links = [
{icon_pack = "fas", icon="code", name = "Code", url = "https://github.com/KWB-R/fakin.path.app"}, 
{icon_pack = "fas", icon="copyright", name="MIT License", url = "https://github.com/KWB-R/fakin.path.app/blob/master/LICENSE"}, 
{icon_pack = "fas", icon="book", name="Documentation", url = "https://kwb-r.github.io/fakin.path.app/"},
{icon_pack = "fab", icon="r-project", name="Related App", url = "app/fakin.path.app/"}
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

This R package contains an R Shiny App that loads file path information from a 
file and displays the paths in different ways. The aim of the app is to find 
weaknesses in the folder structure.
