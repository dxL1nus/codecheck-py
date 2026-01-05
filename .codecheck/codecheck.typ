#import "@preview/cmarker:0.1.8"
#import "@preview/wrap-it:0.1.1": wrap-content, wrap-top-bottom

#set text(
  lang: "en",
)
#set page(
  header: context {
    if counter(page).get().at(0) == 1 {
      rect(stroke: (bottom: black), text(size: 10pt, [#h(1fr)#counter(page).display()]))
    } else {
      if calc.rem(counter(page).get().at(0), 2) == 0 {
        rect(stroke: (bottom: black), text(size: 10pt, [#counter(page).display()#h(1fr)#document.author.join(", ")]))
      } else {
        rect(stroke: (bottom: black), text(size: 10pt, [#document.title#h(1fr)#counter(page).display()]))
      }
    }
  }
)

#show figure.caption: set text(size: 10pt)

#set text(font: "New Computer Modern")

// See the strokes section for details on this!
#let frame(stroke) = (x, y) => (
  left: none,
  right: none,
  top: if y < 2 { stroke } else { 0pt },
  bottom: stroke,
)

#set table(
  stroke: frame(1pt + black),   // no default table borders
  inset: (right: 1.5em), // cell padding
  fill: none,     // no background
  columns: (auto, auto),
)

#show table: t => {
  if t.columns.all(c => c == auto) {
    table(columns: (1fr,) * t.columns.len(), align: t.align, ..t.children)
  } else {
    t
  }
}

#cmarker.render(
  read("codecheck.md"),
  scope: (
    image: (source, alt: none, format: auto) => image(source, alt: alt, format: format),
  )
)