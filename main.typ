#import "@preview/zebraw:0.6.1": *

#import "@preview/rubber-article:0.5.2": *

#let title = "swin transformer的学习"

// Layout and styling
#show: article.with(
  cols: none, // Tip: use #colbreak() instead of #pagebreak() to seamlessly toggle columns
  eq-chapterwise: true,
  eq-numbering: "(1.1)",
  header-display: true,
  header-title: title,
  lang: "zh",
  page-margins: 1.75in,
  page-paper: "us-letter",
)

// Frontmatter
#maketitle(
  title: title,
  authors: ("2023104051袁建东",),
  date: datetime.today().display("[day]. [month repr:long] [year]"),
)

#set text(font: "Noto Serif CJK SC")
#set par(first-line-indent: (amount: 2em, all: true))


