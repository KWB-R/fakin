+++
title = "Knowledge Repo: An Innovative Way For Sharing Knowledge At An Institutional Level"
date = 2019-02-16T14:45:00  # Schedule page publish date.
draft = false

# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
time_start = 2019-03-18T14:45:00
time_end = 2019-03-18T15:30:00
#all_day = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["rustler", "sonnenberg"]

# Abstract and optional shortened version.
abstract = ""

# Summary. An optional shortened abstract.
summary = "Chaining Open-Source Tools For Scaling Knowledge"

# Name of event and optional event URL.
event = "Barcamp Open Science"
event_url = "https://www.open-science-conference.eu/barcamp/"

# Location of event.
location = "Wikimedia Deutschland, Tempelhofer Ufer 23-24, 10963 Berlin"

# Is this a featured talk? (true/false)
featured = false

# Projects (optional).
#   Associate this talk with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["deep-learning"]` references 
#   `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects = []

# Tags (optional).
#   Set `tags = []` for no tags, or use the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = ["networking", "open science", "barcamp", "session", "knowledge repo"]

# Slides (optional).
#   Associate this talk with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references 
#   `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides = ""

# Links (optional).
url_pdf = ""
url_slides = ""
url_video = ""
url_code = ""

# Custom links (optional).
#   Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
#links = [{name = "Result: PM interviews mindmap", url = "mindmap_interviews_with_project-managers_v1.0.pdf"}, 
#{name = "Result: survey comments", url = "survey_comments.pdf"}
#]
links = [
{icon_pack = "fas", icon = "broadcast-tower", name = 'OpenScienceRadio Interview', url = "http://www.openscienceradio.org/2019/03/18/osr148-knowledge-repo-an-innovative-way-for-sharing-knowledge-at-an-institutional-level-oscibar-en/"},
{icon_pack = "fas", icon = "edit", name = 'Etherpad: Session 10 "Knowledge Repo"', url = "https://etherpad.wikimedia.org/p/oscibar2019_session10"},
{icon_pack = "fas", icon = "edit", name = "Etherpad: Sessions Metapad", url = "https://etherpad.wikimedia.org/p/oscibar2019"},
{name = "Link to Barcamp", url = "https://www.open-science-conference.eu/barcamp/"},
]

# Does the content use math formatting?
math = true

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
[image]
  # Caption (optional)
  caption = "Image credit: [**Sarah-Isabella Behrens**](https://twitter.com/SIBehrens/status/1107642033097846786)"

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = "Right"
+++

Implementing a [(pre-)reproducible](https://www.nature.com/articles/d41586-018-05256-0)
(open) science workflow at an institutional level is very challenging, as it 
requires that researchers do not only have the sufficient skills (e.g. programming) 
but also know a [myriad of tools](https://osf.io/thvef/) (e.g. version control 
software, virtual machines, containers, metadata, repositories). 

While learning some these skills/tools can be sometimes outsourced to elearning 
plattforms (e.g. [DataCamp](../../tool/datacamp/), [Open Science MOOC](../../tool/mooc/), 
[The Turing Way](https://software.ac.uk/blog/2019-03-05-turing-way-open-source-resource-promoting-best-practice-reproducible-research)), knowledge exchange at an institutional level (Who? Where? 
What? When?) is often informal. Consequently staff fluctuation leads to a loss of 
knowledge as processes and decisions are documented insufficiently.

Creating a knowledge repository helps formalising the documentation process. We tested a workflow for creating a knowledge repo within our BMBF funded project [FAKIN](https://www.kompetenz-wasser.de/en/project/fakin-research-data-management/). 
Information from different sources (e.g. [DataCamp](../../tool/datacamp/), 
[GitHub](../../tool/github/), [Zenodo](../../tool/zenodo/) and [Endnote](../../tool/endnote/)) 
are collected, links between different objects (e.g. [code](../../#code), 
[projects](../../#projects), [people](../../#people), [publications](../../publication/), 
[tools](../../#tool)) are generated and stored at one place. The structure is simple and allows adding content in the form of text file templates. Everything is based on open-source tools and services such as [R](../../tool/r/)([Studio](../../tool/rstudio/)), [Hugo](../../tool/hugo/) and [GitHub](../../tool/github/)/[GitLab](../../tool/gitlab/).

We would like to present our approach, compare it to similar tools we know ([AirBnB knowledge repo](https://github.com/airbnb/knowledge-repo),
[TIB Vivo](https://vivo.tib.eu/fis/)) and discuss with you whether you experience similar challenges and how you are trying to solve these at your (small) research institute.
