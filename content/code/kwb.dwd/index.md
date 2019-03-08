+++
title = "kwb.dwd"
date = 2019-02-24T00:00:00+01:00
draft = false

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["r", "rstats", "r package", "dwd", "rain", "radar", "flusshygiene"]

tools = ["algolia", "r", "rstudio", "github", "gitlab", "git", "travis", "appveyor", "codecov"]

projects = ["flusshygiene"]



# Project summary to display on homepage.
summary = "R Package to Access Information Provided by [Deutscher Wetterdienst (DWD)](https://www.dwd.de)"

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
{icon_pack = "fas", icon="book", name="Documentation", url = "https://kwb-r.github.io/kwb.dwd/articles/tutorial.html"},
{icon_pack = "fab", icon="r-project", name="R Package", url = "https://github.com/KWB-R/kwb.dwd"}, 
{icon_pack = "fas", icon="copyright", name="MIT License", url = "https://github.com/KWB-R/kwb.dwd/blob/master/LICENSE"},
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

This package provides functions to simplify the access to the data provided online 
by the Deutscher Wetterdienst (DWD, https://www.dwd.de). It currently contains 
a function [get_radolan_urls()](https://kwb-r.github.io/kwb.dwd/reference/get_radolan_urls.html) 
that returns the internet addresses (Unified Resource Locators, URLs) to the zip 
files containing rain data from the RADOLAN system in daily or hourly resolution 
(see https://www.dwd.de/DE/leistungen/radolan/radolan.html). 

The function [download_radolan()](https://kwb-r.github.io/kwb.dwd/reference/download_radolan.html) 
helps you to download these files. But take care, you should restrict the time 
period as each file contains the data for all of Germany.
