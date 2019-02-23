+++
title = "netWORKS4"
date = 2018-12-13T00:00:00+01:00
draft = false

authors = ["matzinger", "rustler", "sonnenberg"]

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["modelling", "resilience"]

# Project summary to display on homepage.
summary = "Planning Criteria for Climate-just Cities" 

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
{icon_pack = "fas", icon="bullseye", name="Keyfacts", url = "https://www.kompetenz-wasser.de/en/project/networks/"},
{icon_pack = "fab", icon="r-project", name="R package: kwb.resilience", url = "code/kwb.resilience/"},
{icon_pack = "fab", icon="r-project", name="R package: kwb.pkgbuild", url = "code/kwb.pkgbuild/"},
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


[Andreas Matzinger](../../authors/matzinger/) had R scripts with functions for assessing 
the resilience of technical systems. 

Within FAKIN this functions were semi-automatically (with the help of the R 
package [kwb.pkgbuild](../../code/kwb.pkgbuild) compiled into the R package  [kwb.resilience](../../code/kwb.resilience), with the following features:

- Open-source code on [Github](https://github.com/kwb-r/kwb.resilience) with 
[MIT license](https://choosealicense.com/licenses/mit/)

- [Documentation](https://kwb-r.github.io/kwb.resilience)

- Continious integretion: automatically checks for each change in the source code, 
whether the R package can be installed on Windows ([Appveyor](https://ci.appveyor.com/project/KWB-R/kwb-resilience/branch/master)) and Linux ([Travis-CI](https://travis-ci.org/KWB-R/kwb.resilience)) platforms

- Tests: if the implemented R code works as expected using the free service of 
[codecov.io](https://codecov.io/github/KWB-R/kwb.resilience)

- [Zenodo DOI](http://doi.org/10.5281/zenodo.2243961) and is thus citable 
