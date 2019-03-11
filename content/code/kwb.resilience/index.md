+++
title = "kwb.resilience"
date = 2018-07-12T09:11:40+01:00
draft = false

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["r", "rstats", "r package", "resilience", "networks4", "other project"]

tools = ["svn", "git", "github", "r", "rstudio"]

projects = ["networks4"]

# Project summary to display on homepage.
summary = "R Package for the Quantification of Technical Resilience"

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
url_code = "https://github.com/KWB-R/kwb.resilience"
url_dataset = ""
url_slides = ""
url_video = ""
url_poster = ""

# Custom links (optional).
#   Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
# links = [{icon_pack = "fab", icon="twitter", name="Follow", url = "https://twitter.com"}]
links = [
{icon_pack = "ai", icon="doi", name="Zenodo", url = "https://doi.org/10.5281/zenodo.2243960"},
{icon_pack = "fas", icon="book", name="Documentation", url = "http://kwb-r.github.io/kwb.resilience"},
{icon_pack = "fab", icon="r-project", name="R Package", url = "https://github.com/KWB-R/kwb.resilience"}, 
{icon_pack = "fas", icon="copyright", name="MIT License", url = "https://github.com/KWB-R/kwb.resilience/blob/master/LICENSE"},
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

# R Package for the Quantification of Technical Resilience

[kwb.resilience](https://github.com/KWB-R/kwb.resilience) allows calculating different resilience indices for time series. Equations are described and discussed in the freely available conference paper by [Matzinger et al. (2018)](https://www.researchgate.net/publication/326040304_Quantitative_Beschreibung_der_Resilienz_urbaner_Wassersysteme) (unfortunately in German only). The sample data for the first example in the paper is also contained in the package as a data.frame “oxygen”.

The package should make a starting point for a broader discussion of approaches to tackle resilience of urban water infrastructure for applied cases. Accordingly, adaptations and suggestions are encouraged!