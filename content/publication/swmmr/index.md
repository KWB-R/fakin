+++
title = "swmmr"
date = 2019-03-19T00:00:00+01:00
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Dominik Leutnant", "", "sonnenberg"]


# Publication type.
# Legend:
# 0 = Uncategorized
# 1 = Conference paper
# 2 = Journal article
# 3 = Manuscript
# 4 = Report
# 5 = Book
# 6 = Book section
publication_types = ["0"]

# Publication name and optional abbreviated version.
publication = ""
publication_short = ""

# Abstract and optional shortened version.
abstract = "Functions to connect the widely used [Storm Water Management Model (SWMM)](https://www.epa.gov/water-research/storm-water-management-model-swmm) of the United States Environmental Protection Agency (US EPA) to R with currently two main goals: (1) Run a SWMM simulation from R and (2) provide fast access to simulation results, i.e. [SWMM](https://www.epa.gov/water-research/storm-water-management-model-swmm)'s binary '.out'-files. High performance is achieved with help of Rcpp. Additionally, reading [SWMM](https://www.epa.gov/water-research/storm-water-management-model-swmm)'s '.inp' and '.rpt' files is supported to glance model structures and to get direct access to simulation summaries."

# Summary. An optional shortened abstract.
summary = "R Interface for US EPA's [SWMM](https://www.epa.gov/water-research/storm-water-management-model-swmm)"

# Is this a featured publication? (true/false)
featured = false

# Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["deep-learning"]` references 
#   `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects = []

# Slides (optional).
#   Associate this page with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references 
#   `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides = ""

# Tags (optional).
#   Set `tags = []` for no tags, or use the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["metadata", "codemeta", "r package", "collaboration external"]

# Links (optional).
url_pdf = ""
url_preprint = ""
url_code = ""
url_dataset = ""
url_project = ""
url_slides = ""
url_video = ""
url_poster = ""
url_source = ""

# Custom links (optional).
#   Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
links = [
{icon_pack = "ai", icon = "doi", name = "Zenodo DOI", url = "https://doi.org/10.5281/zenodo.2598516"},
{icon_pack = "fas", icon="book", name="Documentation", url = "https://ropensci.github.io/codemetar/"},
{icon_pack = "fab", icon="r-project", name="R Package (CRAN)", url = "https://cran.r-project.org/web/packages/codemetar/index.html"},
{icon_pack = "fab", icon="github", name="Code (GitHub)", url = "https://github.com/ropensci/codemetar"},
{icon_pack = "fas", icon="tools", name="Tool: codemeta", url = "../../tool/codemeta"},
]

# Digital Object Identifier (DOI)
doi = ""

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
[image]
  # Caption (optional)
  caption = ""

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++
