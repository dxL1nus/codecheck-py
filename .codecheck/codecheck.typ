#import "@preview/cmarker:0.1.8"
#import "@preview/wrap-it:0.1.1": wrap-content, wrap-top-bottom

#set text(
  lang: "en",
)
#set page("a4", numbering: "1")

#show figure.caption: set text(size: 10pt)

#set text(font: "New Computer Modern")

// style the tables
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
  columns: (auto, auto, 0.25fr),
)

#show table.cell: set text(size: 9pt)

#show table: t => {
  if t.columns.all(c => c == auto) and t.columns.len() == 3 {
    table(
      columns: (2fr, 3fr, 0.8fr),
      align: t.align,
      ..t.children
    )
  } else if t.columns.all(c => c == auto) and t.columns.len() == 2 {
    align(
      center,
      block(
        width: 80%,
        table(
          columns: (1fr, 2.5fr),
          align: t.align,
          ..t.children
        )
      )
    )
  } else if t.columns.all(c => c == auto) {
    table(columns: (1fr,) * t.columns.len(), align: t.align, ..t.children)
  } else {
    t
  }
}

// make links blue
#show link: set text(blue)

// center the first headings
#let heading_index = counter("heading_index");
#show heading: h => {
  // counter("heading_index").display()
  heading_index.step()
  if h.level == 1 and heading_index.get().at(0) < 1 {
    set text(size: 1.2em)
    align(
      center,
      h
    )
  } else if h.level == 2 and heading_index.get().at(0) < 4 {
    align(
      center,
      h
    )
  } else {
    h
  }
}

// center the codecheck logo
#show image: img => {
  if img.source.ends-with(".svg") {
    block(
       height: 2em,     
    )
    align(
      center,
      block(
        width: 30%,
        img,
      )
    )
    block(
       height: 2em,     
    )
  } else {
    img
  }
}

#cmarker.render(
  read("codecheck.md"),
  scope: (
    image: (source, alt: none, format: auto) => image(source, alt: alt, format: format),
  )
)