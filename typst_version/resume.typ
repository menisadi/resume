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
  if desc != "" {
    linebreak()
    text(fill: gray, size: 9.5pt)[#desc]
  }
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
- Data Scientist at Intent IQ with 2+ years applying ML and algorithms research in production AdTech systems.
- Ph.D. in Computer Science; thesis on machine learning and data privacy.
- Published at top-tier venues (ICML, NeurIPS, ESA, ALT).

// ── Experience ───────────────────────────────────────────────────────────────
#section("Experience")

#cventry(
  title: "Data Scientist",
  sub: "Intent IQ · Israel – Hybrid",
  date: "Feb 2023 – Present",
  body: [
    - Optimization using contextual bandit models with online learning.
    - Cross-device identity resolution combining graph algorithms with XGBoost classifiers and Word2Vec-encoded features.
    - Production ML pipelines on AWS (S3, SQS, ECS) with Docker-based deployments, processing tens of millions of records per day.
  ],
)

#cventry(
  title: "Teaching Assistant",
  sub: "Ben-Gurion University of the Negev",
  date: "2015 – 2022",
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
)

#pubentry(
  title: "Relaxed Models for Adversarial Streaming: The Advice Model and the Bounded Interruptions Model",
  venue: "ESA 2023",
)

#pubentry(
  title: "Adaptive Data Analysis with Correlated Observations",
  venue: "ICML 2022",
)

#pubentry(
  title: "On the Sample Complexity of Privately Learning Axis-Aligned Rectangles",
  venue: "NeurIPS 2021",
)

#pubentry(
  title: "Sample Compression for Real-Valued Learners",
  venue: "ALT 2019",
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
  [Python (Pandas, NumPy, Scikit-learn, XGBoost); SQL (MySQL, PostgreSQL, AWS Athena); AWS (S3, Lambda, SQS, ECS); Docker; protobuf.],
  text(weight: "bold")[Languages:],
  [Hebrew, English, Portuguese],
)
