+++
title = "Chaining Tools to Create a Knowledge Repo"
date = 2019-02-16T13:00:00  # Schedule page publish date.
draft = false

# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
time_start = 2019-07-09T09:30:00
time_end = 2019-03-12T18:00:00
all_day = true

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["rustler", "sonnenberg", "sprenger"]

# Abstract and optional shortened version.
abstract = 'In small research institutes knowledge is exchanged in an informal way. Staff fluctuation leads to a loss of knowledge as processes and decisions are documented insufficiently. A company-wide knowledge repository helps formalising the documentation process. For example AirBnB established a knowledge repo and also open-sourced its software. However, it is only designed as "knowledge sharing plattform between data scientists and other technical professions" and its features are limited to create taggable blog-posts with IPython Notebooks or R markdown, but these are not reproducible yet. At our research institute also knowledge about code, people, projects, publications, tools and the links between them are important and need to be stored in one place in order to make it meaningfull for all, not only technicians. Thus we developed a toolchain soley based on open-source software, tools and cloud-services. Information from different sources is collected either automatically (using own R packages, e.g. for DataCamp, GitHub, Zenodo, Endnote) or manually (in the form of text file templates). These are exported into markdown files allows us to create a version controlled (Git), static website (Hugo with theme "academic") which contains all features needed for our small research institute. It is automatically deployed by chaining continous integration (Gitlab-CI, Travis) with the R package "blogdown" (website generation) and GitLab pages (to host it).' 

# Summary. An optional shortened abstract.
summary = "With the Help of R, GitLab, Hugo and More" 

# Name of event and optional event URL.
event = "useR! 2019"
event_url = "http://www.user2019.fr/"

# Location of event.
location = "Toulouse, France"

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
tags = ["communication-external", "r-conference", "conference"]

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
{name = "Link to Conference", url = "https://www.user2019.fr"},
{name = "Abstract Submission (Deadline: 2019-03-01)", url = "http://www.user2019.fr/abstracts/"},
{icon_pack = "fas", icon = "file-pdf", name = "Abstract: PDF", url = "abstract/knowledge-repo.pdf"},
{icon_pack = "fas", icon = "code", name = "Abstract: Source Code (PDF)", url = "abstract/source_code_pdf.zip"},
]

# Does the content use math formatting?
math = true

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
[image]
  # Caption (optional)
  caption = "Image credit: [**Unsplash**](https://unsplash.com/photos/bzdhc5b3Bxs)"

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = "Right"
+++

