#import "template/style.typ": titlePage

#show: doc => titlePage(
  title: "Template",
  subtitle: "for Typst",
  authors: ( 
    (
      name: "Max Mustermann",
      mnr: 12345
    ),
  ),
  abstractUS: lorem(80),
  abstractDE: lorem(80),
  scientificSupervisor: "Prof. x",
  technicalSupervisor: "M. Mustermann",
  oath: false,
  doc,
)

= Zusammenfassung 
<zusammenfassung>

= Abstract
<abstract>

= introduction
<chap:introduction>
#lorem(300)

#pagebreak()

== problem definition
<sec:introduction.problem_definition>
#lorem(300)
=== scientifique question
<subsec:scienifique_question>
#lorem(100)
#pagebreak()

== motivation
<sec:introduction.motivation>
#lorem(300)
#pagebreak()

== scientific questions
<sec:introduction.scientific_questions>
#lorem(300)
#pagebreak()

= basics
<chap:basics>
#lorem(300)
#pagebreak()

= state of the technology
<chap:state_of_the_technology>
#lorem(100)
#linebreak()
#linebreak()
#lorem(100)
#figure([#box(width: 50%, image("images/logos/HKA_EIT_Logo.jpg"))], caption: [
  This is a figure caption
])
<fig:my_figure>
#pagebreak()

= concept <chap:concept>
#lorem(100)
#pagebreak()

= implementation <chap:implementation>
#lorem(40)
#v(1cm)
#figure(
  ```python
  # This is some Python code
  print("Hello, world!")
  ```,
  caption: "python Code"
)
#pagebreak()

= result
<chap:result>
#lorem(100)
#figure(
  table(
    columns: 3,
    table.header(
      [*A*],[*B*],[*C*]
    ),
    //1. row
    [1],[2],[3],
    //2. row
    [4],[5],[6],
  ),
  caption: "This is a table caption"
)
#pagebreak()

= possible usecases
<chap:possible_extensions_usecases>
#lorem(100)

#pagebreak()

#bibliography("./src/src.bib", full: true, title: "Literaturverzeichnis")
#pagebreak()

#outline(
  title: [Abbildungsverzeichnis],
  target: figure.where(kind: image),
)
#pagebreak()

#outline(
  title: [Tabellenverzeichnis],
  target: figure.where(kind: table),
)
#pagebreak()

#outline(
  title: [Sourcecodeverzeichnis],
  target: figure.where(kind: raw),
)