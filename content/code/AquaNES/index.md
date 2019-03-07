+++
title = "AquaNES"
date = 2019-02-19T12:00:00+01:00
draft = false


authors = ["stapf", "rustler"]

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["r", "rstats", "r package", "data import", "data visualisation", "data aggregation", "data export", "aquanes", "pilot plant", "ozonation", "best practices", "qms"]

projects = ["aquanes"]

tools = ["r", "rstudio", "github", "gitlab", "git"]

# Project summary to display on homepage.
summary = "Analysis of ozone pilot plant data at wastewater treatment plant Schönerlinde"

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
{icon_pack = "fas", icon="key", name="**Access To Source Code Limited to KWB Team!**", url = ""},
{icon_pack = "fab", icon="r-project", name="R Package", url = "https://github.com/KWB-R/AquaNES"},
{icon_pack = "fas", icon="code", name="Standardised with R package kwb.pkgbuild", url = "../kwb.pkgbuild/"},
{icon_pack = "fas", icon="copyright", name="MIT License", url = "https://github.com/KWB-R/AquaNES/blob/master/LICENSE"},
{icon_pack = "fas", icon="book", name="Documentation", url = "http://kwb-r.gitlab.io/AquaNES/"},
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

The R package [AquaNES](https://github.com/KWB-R/AquaNES) is written by [Michael Stapf](../../authors/stapf/) for an advanced data analysis for the ozonation pilot plant 
at the wastewater treatment plant (WWTP) Schönerlinde.

Within the FAKIN project it was standardised with the help of the R package
[kwb.pkgbuild](../kwb.pkgbuild/). For details on how to create your own R 
package skeleton to the predefined KWB-R style, have a look [here](../kwb.pkgbuild/).