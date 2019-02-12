+++
title = "App: aquanes.report"
date = 2019-02-12T01:11:25+01:00
draft = false

authors = ["rustler"]
# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["r", "rstats", "data-import", "data-visualisation", "automated-reporting", "data-aggregation", "data-export", "project-aquanes", "shiny-app", "project-fakin", "mybinder", "publication"]

# Project summary to display on homepage.
summary = "Automated Reporting Tool for Water Suppliers"

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
url_custom = [
{name = "App", url = "https://mybinder.org/v2/gh/kwb-r/apps/aquanes.report?urlpath=shiny/haridwar/"}, 
{icon_pack = "fas", icon="code", name = "Code", url = "https://github.com/KWB-R/apps/tree/aquanes.report"}, 
{icon_pack = "fas", icon="copyright", name="MIT License", url = "https://github.com/KWB-R/apps/blob/aquanes.report/LICENSE.txt"}, 
{icon_pack = "fas", icon="book", name="Documentation", url = "https://kwb-r.github.io/aquanes.report/articles/A3_0_gui_overview.html"},
{icon_pack = "fab", icon="r-project", name="Related R Package", url = "code/aquanes.report/"}
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


### Automated Reporting Tool for Water Suppliers

The massive amounts of data from sensors, which is usually recorded in a high 
temporal resolution (up to every second) is challenging for data processing and 
visualisation. Especially if standard tools like MS EXCEL are used, which are 
not well suited for such tasks to data import restrictions (e.g. rows per 
spreadsheet limited to maximum 1 million rows in MS EXCEL 2010) or missing 
built-in features for data aggregation (e.g. calculating one hour median values 
from the raw data).
In addition operational data often needs to be combined with analytical data 
(usually with a temporal resolution of days to weeks) for example in order to 
(1) assess the impact of the plant’s operation scheme (e.g. flow rate) on its 
performance for reducing specific substances or for (2) calculating substance 
loads (by multiplying substance concentrations with flow rates)

Within the AQUANES project – in order to address the above challenges for 
small companies or wa-ter operators – a data visualization and reporting tool 
was developed with the software R (www.r-project.org), which enables the user to: 

- Explore online and offline data at different temporal aggregation levels (e.g. 
raw data or 10 minutes median values)

- Create automated reports not only including the raw (online/offline) data but 
also with more advanced calculations combining different online and/or offline 
data (e.g. specific en-ergy demand)

In a first step, the R reporting tool was implemented and tested for the AQUANES site Haridwar, 
which is used to demonstrate the functionality of the app.


The [app](https://mybinder.org/v2/gh/kwb-r/apps/aquanes.report?urlpath=shiny/haridwar/) 
is deployed using the free service [mybinder.org](https://mybinder.org/).