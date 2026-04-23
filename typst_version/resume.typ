// ── Document setup ───────────────────────────────────────────────────────────
#set document(title: "Meni Sadigurschi – CV")
#set page(paper: "a4", margin: (x: 1.4cm, y: 1.2cm))

#let accent  = rgb("#CE1212")
#let dark    = rgb("#303030")
#let gray    = rgb("#5D5D5D")

#set text(
  font: ("Helvetica Neue", "Arial"),
  size: 10pt,
  fill: dark,
)
#set par(leading: 0.55em, spacing: 0.65em)

// ── Header ───────────────────────────────────────────────────────────────────
#let email-addr = "menisadi@gmail.com"
#let site-url   = "https://menisadi.github.io/"

#align(center)[
  #text(size: 34pt)[
    #text(weight: "light")[Meni ]#text(weight: "bold")[Sadigurschi]
  ]
  #v(3pt)
  #text(size: 9pt, fill: gray)[
    ✉ #link("mailto:" + email-addr)[#email-addr]
    #h(8pt)#text[|]#h(8pt)
    ☎ 054-675-1163
    #h(8pt)#text[|]#h(8pt)
    IL
    #h(8pt)#text[|]#h(8pt)
    #link(site-url)[menisadi.github.io]
  ]
]

#v(5mm)

// ── Helpers ──────────────────────────────────────────────────────────────────
#let section(title) = {
  v(2mm)
  text(weight: "bold", size: 12pt, fill: accent, tracking: 0.5pt)[#upper(title)]
  v(-0.5mm)
  line(length: 100%, stroke: 0.7pt + accent)
  v(2mm)
}

#let cventry(title: "", sub: "", date: "", note: "", body: none) = {
  grid(
    columns: (1fr, auto),
    gutter: 4pt,
    {
      text(weight: "bold", size: 10.5pt)[#title]
      if sub != "" {
        linebreak()
        text(fill: gray, size: 9.5pt)[#sub]
      }
    },
    {
      align(right)[#text(fill: gray, size: 9pt)[#date]]
      if note != "" {
        linebreak()
        align(right)[#text(fill: accent, weight: "bold", size: 9pt)[#note]]
      }
    },
  )
  if body != none {
    v(1.5pt)
    text(size: 9.5pt)[#body]
  }
  v(4mm)
}

#let pubentry(title: "", venue: "", desc: "") = {
  text(weight: "bold")[#title]
  linebreak()
  text(fill: accent, size: 9.5pt)[#venue]
  linebreak()
  text(fill: gray, size: 9.5pt)[#desc]
  v(3.5mm)
}

#let cvhonor(award: "", org: "", year: "") = {
  grid(
    columns: (auto, 1fr),
    column-gutter: 14pt,
    align(top)[#text(fill: gray, size: 9pt)[#year]],
    {
      text(weight: "bold")[#award]
      linebreak()
      text(fill: gray, size: 9pt)[#org]
    },
  )
  v(2.5mm)
}

// ── Summary ──────────────────────────────────────────────────────────────────
#section("Summary")
#set list(indent: 4pt, body-indent: 6pt, spacing: 4pt)
- Ph.D. in Computer Science with a thesis on machine learning and data privacy.
- Experienced in the use of contemporary platforms related to the fields of data science and machine learning.
- Main author of publications in top-tier conferences.
- Currently working as a Data Scientist at Intent IQ, applying machine learning and algorithms research in production.

// ── Experience ───────────────────────────────────────────────────────────────
#section("Experience")

#cventry(
  title: "Data Scientist",
  sub: "Intent IQ · Israel – Hybrid",
  date: "Feb 2023 – Present",
  body: [Applying machine learning and algorithms research in a production environment.],
)

#cventry(
  title: "Teaching Assistant",
  sub: "Ben-Gurion University of the Negev",
  date: "2015 – 2022",
  body: [Teaching: Discrete Structures and Combinatorics, Design of Algorithms, Graphs, Introduction to Machine Learning, Adaptive Data Analysis.],
)

#cventry(
  title: "Research Assistant",
  sub: "Georgetown University (remote)",
  date: "2016 – 2018",
  body: [Working with Prof. Kobi Nissim from Harvard University and Georgetown University. Working on optimization and implementations of private learning algorithms.],
)

// ── Education ────────────────────────────────────────────────────────────────
#section("Education")

#cventry(
  title: "Ph.D. in Computer Science",
  sub: "Ben-Gurion University of the Negev",
  date: "2018 – 2022",
  body: [Thesis: _A Study of Privacy and Compression in Learning Theory_],
)

#cventry(
  title: "M.Sc. in Computer Science",
  sub: "Ben-Gurion University of the Negev",
  date: "2016 – 2018",
  note: "GPA: 98",
  body: [Thesis: _Compression-Schemes for Real-Valued Learners_],
)

#cventry(
  title: "B.Sc. in Mathematics and Computer Science",
  sub: "Ben-Gurion University of the Negev",
  date: "2013 – 2016",
  note: "GPA: 93",
)

// ── Publications ─────────────────────────────────────────────────────────────
#section("Publications")

#pubentry(
  title: "Agnostic Sample Compression Schemes for Regression",
  venue: "ICML 2024 (Spotlight)",
  desc: "Establishing agnostic sample compression schemes for regression with near-optimal rates.",
)

#pubentry(
  title: "Relaxed Models for Adversarial Streaming: The Advice Model and the Bounded Interruptions Model",
  venue: "ESA 2023",
  desc: "Introducing relaxed adversarial streaming models that allow practical algorithm design with provable guarantees.",
)

#pubentry(
  title: "Adaptive Data Analysis with Correlated Observations",
  venue: "ICML 2022",
  desc: "A fundamental study regarding the possible extensions of adaptive data analysis tools such that they could be used with correlated observations.",
)

#pubentry(
  title: "On the Sample Complexity of Privately Learning Axis-Aligned Rectangles",
  venue: "NeurIPS 2021",
  desc: "A privacy preserving learning algorithm for the Axis-Aligned Rectangles problem which has near-optimal sample complexity.",
)

#pubentry(
  title: "Sample Compression for Real-Valued Learners",
  venue: "ALT 2019",
  desc: "An algorithmically efficient version of the learner-to-compression scheme conversion which is also extended to regression hypotheses classes.",
)

// ── Awards ───────────────────────────────────────────────────────────────────
#section("Awards")

#cvhonor(award: "Excellence in Teaching Award",                     org: "Ben-Gurion University of the Negev",             year: "2022")
#cvhonor(award: "Scholarship for High-tech Excellent Doctoral Students", org: "The Kreitman School of Advanced Graduate Studies", year: "2019")
#cvhonor(award: "Dean's List",                                      org: "Ben-Gurion University of the Negev",             year: "2018")
#cvhonor(award: "Suzan Zlotowski Prize for Academic Excellence",    org: "Ben-Gurion University of the Negev",             year: "2014")
#cvhonor(award: "Schulich Leader Scholarships Winner",              org: "The Schulich Foundation",                        year: "2013")

// ── Skills ───────────────────────────────────────────────────────────────────
#section("Skills")

#grid(
  columns: (auto, 1fr),
  column-gutter: 10pt,
  row-gutter: 5pt,
  text(weight: "bold")[Programming:],
  [Experienced with Python and various libraries such as Pandas, Scikit-learn, and TensorFlow.],
  text(weight: "bold")[Research:],
  [Ability to delve deeper, learn complex and new concepts in order to attack challenging problems.],
  text(weight: "bold")[Languages:],
  [Hebrew, English, Portuguese],
)
