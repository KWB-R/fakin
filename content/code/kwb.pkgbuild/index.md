+++
title = "kwb.pkgbuild"
date = 2018-06-12T01:11:39+01:00
draft = false

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["r", "rstats", "r package", "r package automation", "data management", "publication", "fakin", "best practices", "qms", "aquanes", "networks4", "flusshygiene"]

tools = ["algolia"]

projects = ["networks4", "flusshygiene", "smartplant", "aquanes"]

authors = ["rustler", "sonnenberg"]

# Project summary to display on homepage.
summary = "Functions for Automating R package development at KWB to a Predefined Style"

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
{icon_pack = "fas", icon="book", name="Documentation", url = "http://kwb-r.github.io/kwb.pkgbuild"},
{icon_pack = "fab", icon="r-project", name="R Package", url = "https://github.com/KWB-R/kwb.pkgbuild"}, 
{icon_pack = "fas", icon="copyright", name="MIT License", url = "https://github.com/KWB-R/kwb.pkgbuild/blob/master/LICENSE"},
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

**R package for Automating R package development at KWB to a Predefined Style**

For details on how to create your own R package skeleton to the predefined KWB-R 
style, the following resources are avaiable: 

- **Tutorials**
    
    + [How to install KWB-R packages?](https://kwb-r.github.io/kwb.pkgbuild/articles/install.html)
    
    + [Create an KWB-R package from scratch](https://kwb-r.github.io/kwb.pkgbuild/articles/tutorial.html)
    
- **Code examples**: for an overview on R scripts used to either create a new R 
package from scratch or to standardise an already existing R package, have a look at https://github.com/KWB-R/kwb.pkgbuild/issues/26. In case you successfully used 
[kwb.pkgbuild](https://github.com/kwb-r/kwb.pkgbuild/) it would be great if you 
could add your R script to this [showcase](https://github.com/KWB-R/kwb.pkgbuild/issues/26).