+++
title = "Make Your Code Great Again!"
date = 2019-03-01T23:00:00  # Schedule page publish date.
draft = false

# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
time_start = 2019-07-09T09:30:00
time_end = 2019-03-12T18:00:00
all_day = true

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["sonnenberg", "rustler", "sprenger"]

# Abstract and optional shortened version.
abstract = "What is good code? What is bad code? What happened to good code that turned out to be bad? And if it's bad, what can we do to make it good, or even, great again? We will outline Best Practices for good and maintainable source code writing. A couple of analytical [R](../../../tool/r/)-functions will be presented that aim at assessing code quality and disclosing weaknesses of existing R code. One function identifies duplicates of function definitions. It extracts the bodies of functions with identical name and helps the user compare their differences. Duplicated functions indicate that code has been copied and pasted. Exact duplicates can be removed and the function can be dened at a single place, e.g. in a package. Another function identifies string constants. It is used to find hard-coded file paths. File paths can be defined in a redundant-free way to make them easily adaptable to changing locations of scripts or input files. We propose a method to define proper paths. A third function looks for package dependencies and logs the most frequently used packages. Ultimately, a script summary is generated that calculates metrics supposed to be possible indicators for the quality of code: e.g. number of rows/functions per file, number of expressions per function, number of for-loops, if-else-statements, etc. With our presentation, we would like to discuss about [R](../../../tool/r/)-code quality and maintainability and about making code great again."

# Summary. An optional shortened abstract.
summary = "What is good code? What is bad code? What happened to good code that turned out to be bad?" 

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
tags = ["communication external", "r conference", "conference", "code analysis", 
"clean code", "best practices", "dry", "duplicates", "metrics", "reproducibility"]

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
{icon_pack = "fas", icon = "file-pdf", name = "Submitted Abstract", url = "make-your-code-great_v1.0.pdf"},
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

