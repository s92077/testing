#import "@preview/unequivocal-ams:0.1.2": ams-article
#import "@preview/lemmify:0.1.8": *
#import "@preview/equate:0.3.1": equate
#import "@preview/quick-maths:0.2.1": shorthands

#show: ams-article.with(
  title: [Sion's minimax theorem],
  authors: (
    (
      name: "",
      department: [Department of Mathematics],
      organization: [University of Exampleville],
      location: [Tennessee, TN 59341],
      email: "jdoe@math.ue.edu",
      url: "math.ue.edu/~jdoe"
    ),
  ),
  // abstract: "",
  // bibliography: bibliography("refs.bib"),
)
// Theorem style
#let thm-style(
  thm-type, name, number, body
) = grid(
  block(width: 100%, breakable: true)[#{
    set align(left)

    strong(thm-type)
    if number != none {
      " " + strong(number)
    }
  
    if name != none {
      " (" + name + ")"
    }
    strong(".")+" " + text(style: if thm-type=="Definition" {"normal"} else {"italic"}, body)
  }]
)
// Theorem proof style
#let thm-style-proof(
  thm-type,
  name,
  number,
  body
) = block(width: 100%, breakable: true)[#{
  set align(left)

  if name != none {
    text(style: "italic", name)
  } else {
    text(style: "italic", thm-type)
  }
  text(style: "italic",". ") + body + h(1fr) + $square$
}]
// set style
#let (
  theorem, definition, lemma, corollary,
  remark, proposition, example,
  proof, rules: thm-rules
) = default-theorems("thm-group",
  lang: "en",
  thm-numbering: thm-numbering-heading.with(max-heading-level: 1),
  thm-styling: thm-style,
  proof-styling: thm-style-proof,
  ref-styling: (arg, thm-numbering, ref) => {
    show link: set text(font: "New Computer Modern")
    link(ref.target,[#arg #thm-numbering(ref.element)])
  }
)
#show: thm-rules
#set list(indent: 1em)
// shorthands
#show: shorthands.with(
  ($+-$, $plus.minus$),
  ($|-$, math.tack),
)
// equation and aligned equation
#let num-eq(content) = math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num), content)
// #set math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num))
// #let num-al = content => {
//   equate(breakable: true, sub-numbering: true, number-mode: "line", content)
// }
#show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    // Override equation references.
    show link: set text(font: "New Computer Modern")
    link(el.location(),numbering(
      el.numbering,
      ..counter(eq).at(el.location())
    ))
  } else {
    // Other references as usual.
    it
  }
}

= Introduction
asdf
*Claim:* Let $f(x)=(A x)^d/(||(A x)^d||)$. Then, $f(x)$ converges to a periodic point.
#proof[
  Suppose not. Then for every $n in NN$, the $omega$-limit set $F_n$ of the map $f^n$ is not discrete.
  $
  D f (x) = (d dot op("diag")((A x)^(d-1)) dot A ||(A x)^d|| - (A x)^d ((A x)^T)^d/(||(A x)^d||) dot d dot op("diag")((A x)^(d-1)) dot A)/(||(A x)^d||^2)
  $
  so that
  $
  D f (x)(y) &= (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot ((A x)^(d-1) dot.o A y)/(||(A x)^d||^(-1)) \
  & = (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot (op("diag")((A x)^(d-1)))/(||(A x)^d||^(-1)) dot A
  $
  It is a rank $(dim A - 1)$ operator. Consider its eigenvalue decomposition:
  $
  D f (x)(y) = cases(0 & "if" y = x, 1 & "if" y = x)
  $
  where
  $
  (A x)^d perp ((A x)^(d-1) dot.o A y) <=>
  $

  $
  g(y)^T g(y) - lambda (y^T y - 1)
  $
  $
  y = lambda (D g(y)) y
  $
  $
  ((A x)^d)^(k-1)
  $
  
  
  If $f^p (x) = x$ and
  $
  D f^p (x)(x_(-1)) = product_(k=0)^(p-1) (I - (A x_k)^d/(||(A x_k)^d||) ((A x_k)^T)^d/(||(A x_k)^d||)) dot d dot ((A x_k)^(d-1) dot.o A x_(k-1))/(||(A x_k)^d||^(-1)),
  $
  then $x^d = x$ and $d x^(d-1) = d x^((d-1)/d) = d x^((d-1)/d^2)$
  $
  ||D f (x)(y)|| < 1 " iff " y eq.not
  $
  $
  ||(A x)^(d-1) dot.o A y|| < 1 " iff " y eq.not x
  $
  $x dot.o y >=$
  sdfsd sdf sdf sdf s
]#import "@preview/unequivocal-ams:0.1.2": ams-article
#import "@preview/lemmify:0.1.8": *
#import "@preview/equate:0.3.1": equate /* PROTOCOL WORKS */
#import "@preview/quick-maths:0.2.1": shorthands

#show: ams-article.with(
  title: [Sion's minimax theorem asdjfio asdifj oasdfij aosijdf pypotlasdf typing is not the first priority],
  authors: (
    (
      name: "",
      department: [Department of Mathematics],
      organization: [University of Exampleville],
      location: [Tennessee, TN 59341],
      email: "jdoe@math.ue.edu",
      url: "math.ue.edu/~jdoe"
    ),
  ),
  // abstract: "",
  // bibliography: bibliography("refs.bib"),
)
// Theorem style
#let thm-style(
  thm-type, name, number, body
) = grid(
  block(width: 100%, breakable: true)[#{
    set align(left)

    strong(thm-type)
    if number != none {
      " " + strong(number)
    }
  
    if name != none {
      " (" + name + ")"
    }
    strong(".")+" " + text(style: if thm-type=="Definition" {"normal"} else {"italic"}, body)
  }]
)
// Theorem proof style
#let thm-style-proof(
  thm-type,
  name,
  number,
  body
) = block(width: 100%, breakable: true)[#{
  set align(left)

  if name != none {
    text(style: "italic", name)
  } else {
    text(style: "italic", thm-type)
  }
  text(style: "italic",". ") + body + h(1fr) + $square$
}]
// set style
#let (
  theorem, definition, lemma, corollary,
  remark, proposition, example,
  proof, rules: thm-rules
) = default-theorems("thm-group",
  lang: "en",
  thm-numbering: thm-numbering-heading.with(max-heading-level: 1),
  thm-styling: thm-style,
  proof-styling: thm-style-proof,
  ref-styling: (arg, thm-numbering, ref) => {
    show link: set text(font: "New Computer Modern")
    link(ref.target,[#arg #thm-numbering(ref.element)])
  }
)
#show: thm-rules
#set list(indent: 1em)
// shorthands
#show: shorthands.with(
  ($+-$, $plus.minus$),
  ($|-$, math.tack),
)
// equation and aligned equation
#let num-eq(content) = math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num), content)
// #set math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num))
// #let num-al = content => {
//   equate(breakable: true, sub-numbering: true, number-mode: "line", content)
// }
#show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    // Override equation references.
    show link: set text(font: "New Computer Modern")
    link(el.location(),numbering(
      el.numbering,
      ..counter(eq).at(el.location())
    ))
  } else {
    // Other references as usual.
    it
  }
}

= Introduction
sd sduisdufu isudif sdnfjan lsdkfnla kjdf
*Claim:* Let $f(x)=(A x)^d/(||(A x)^d||)$. Then, $f(x)$ converges to a periodic point.
#proof[
  Suppose not. Then for every $n in NN$, the $omega$-limit set $F_n$ of the map $f^n$ is not discrete.
  $
  D f (x) = (d dot op("diag")((A x)^(d-1)) dot A ||(A x)^d|| - (A x)^d ((A x)^T)^d/(||(A x)^d||) dot d dot op("diag")((A x)^(d-1)) dot A)/(||(A x)^d||^2)
  $
  so that
  $
  D f (x)(y) &= (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot ((A x)^(d-1) dot.o A y)/(||(A x)^d||^(-1)) \
  & = (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot (op("diag")((A x)^(d-1)))/(||(A x)^d||^(-1)) dot A
  $
  It is a rank $(dim A - 1)$ operator. Consider its eigenvalue decomposition:
  $
  D f (x)(y) = cases(0 & "if" y = x, 1 & "if" y = x)
  $
  where
  $
  (A x)^d perp ((A x)^(d-1) dot.o A y) <=>
  $

  $
  g(y)^T g(y) - lambda (y^T y - 1)
  $
  $
  y = lambda (D g(y)) y
  $
  $
  ((A x)^d)^(k-1)
  $
  
  
  If $f^p (x) = x$ and
  $
  D f^p (x)(x_(-1)) = product_(k=0)^(p-1) (I - (A x_k)^d/(||(A x_k)^d||) ((A x_k)^T)^d/(||(A x_k)^d||)) dot d dot ((A x_k)^(d-1) dot.o A x_(k-1))/(||(A x_k)^d||^(-1)),
  $
  then $x^d = x$ and $d x^(d-1) = d x^((d-1)/d) = d x^((d-1)/d^2)$
  $
  ||D f (x)(y)|| < 1 " iff " y eq.not
  $
  $
  ||(A x)^(d-1) dot.o A y|| < 1 " iff " y eq.not x
  $
  $x dot.o y >=$
  sdfsd sdf sdf sdf s
]#import "@preview/unequivocal-ams:0.1.2": ams-article
#import "@preview/lemmify:0.1.8": *
#import "@preview/equate:0.3.1": equate
#import "@preview/quick-maths:0.2.1": shorthands

#show: ams-article.with(
  title: [Sion's minimax theorem],
  authors: (
    (
      name: "",
      department: [Department of Mathematics],
      organization: [University of Exampleville],
      location: [Tennessee, TN 59341],
      email: "jdoe@math.ue.edu",
      url: "math.ue.edu/~jdoe"
    ),
  ),
  // abstract: "",
  // bibliography: bibliography("refs.bib"),
)
// Theorem style
#let thm-style(
  thm-type, name, number, body
) = grid(
  block(width: 100%, breakable: true)[#{
    set align(left)

    strong(thm-type)
    if number != none {
      " " + strong(number)
    }
  
    if name != none {
      " (" + name + ")"
    }
    strong(".")+" " + text(style: if thm-type=="Definition" {"normal"} else {"italic"}, body)
  }]
)
// Theorem proof style
#let thm-style-proof(
  thm-type,
  name,
  number,
  body
) = block(width: 100%, breakable: true)[#{
  set align(left)

  if name != none {
    text(style: "italic", name)
  } else {
    text(style: "italic", thm-type)
  }
  text(style: "italic",". ") + body + h(1fr) + $square$
}]
// set style
#let (
  theorem, definition, lemma, corollary,
  remark, proposition, example,
  proof, rules: thm-rules
) = default-theorems("thm-group",
  lang: "en",
  thm-numbering: thm-numbering-heading.with(max-heading-level: 1),
  thm-styling: thm-style,
  proof-styling: thm-style-proof,
  ref-styling: (arg, thm-numbering, ref) => {
    show link: set text(font: "New Computer Modern")
    link(ref.target,[#arg #thm-numbering(ref.element)])
  }
)
#show: thm-rules
#set list(indent: 1em)
// shorthands
#show: shorthands.with(
  ($+-$, $plus.minus$),
  ($|-$, math.tack),
)
// equation and aligned equation
#let num-eq(content) = math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num), content)
// #set math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num))
// #let num-al = content => {
//   equate(breakable: true, sub-numbering: true, number-mode: "line", content)
// }
#show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    // Override equation references.
    show link: set text(font: "New Computer Modern")
    link(el.location(),numbering(
      el.numbering,
      ..counter(eq).at(el.location())
    ))
  } else {
    // Other references as usual.
    it
  }
}

= Introduction
*Claim:* Let $f(x)=(A x)^d/(||(A x)^d||)$. Then, $f(x)$ converges to a periodic point.
#proof[
  Suppose not. Then for every $n in NN$, the $omega$-limit set $F_n$ of the map $f^n$ is not discrete.
  $
  D f (x) = (d dot op("diag")((A x)^(d-1)) dot A ||(A x)^d|| - (A x)^d ((A x)^T)^d/(||(A x)^d||) dot d dot op("diag")((A x)^(d-1)) dot A)/(||(A x)^d||^2)
  $
  so that
  $
  D f (x)(y) &= (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot ((A x)^(d-1) dot.o A y)/(||(A x)^d||^(-1)) \
  & = (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot (op("diag")((A x)^(d-1)))/(||(A x)^d||^(-1)) dot A
  $
  It is a rank $(dim A - 1)$ operator. Consider its eigenvalue decomposition:
  $
  D f (x)(y) = cases(0 & "if" y = x, 1 & "if" y = x)
  $
  where
  $
  (A x)^d perp ((A x)^(d-1) dot.o A y) <=>
  $

  $
  g(y)^T g(y) - lambda (y^T y - 1)
  $
  $
  y = lambda (D g(y)) y
  $
  $
  ((A x)^d)^(k-1)
  $
  
  
  If $f^p (x) = x$ and
  $
  D f^p (x)(x_(-1)) = product_(k=0)^(p-1) (I - (A x_k)^d/(||(A x_k)^d||) ((A x_k)^T)^d/(||(A x_k)^d||)) dot d dot ((A x_k)^(d-1) dot.o A x_(k-1))/(||(A x_k)^d||^(-1)),
  $
  then $x^d = x$ and $d x^(d-1) = d x^((d-1)/d) = d x^((d-1)/d^2)$
  $
  ||D f (x)(y)|| < 1 " iff " y eq.not
  $
  $
  ||(A x)^(d-1) dot.o A y|| < 1 " iff " y eq.not x
  $
  $x dot.o y >=$
  sdfsd sdf sdf sdf s
]#import "@preview/unequivocal-ams:0.1.2": ams-article
#import "@preview/lemmify:0.1.8": *
#import "@preview/equate:0.3.1": equate
#import "@preview/quick-maths:0.2.1": shorthands

#show: ams-article.with(
  title: [Sion's minimax theorem],
  authors: (
    (
      name: "",
      department: [Department of Mathematics],
      organization: [University of Exampleville],
      location: [Tennessee, TN 59341],
      email: "jdoe@math.ue.edu",
      url: "math.ue.edu/~jdoe"
    ),
  ),
  // abstract: "",
  // bibliography: bibliography("refs.bib"),
)
// Theorem style
#let thm-style(
  thm-type, name, number, body
) = grid(
  block(width: 100%, breakable: true)[#{
    set align(left)

    strong(thm-type)
    if number != none {
      " " + strong(number)
    }
  
    if name != none {
      " (" + name + ")"
    }
    strong(".")+" " + text(style: if thm-type=="Definition" {"normal"} else {"italic"}, body)
  }]
)
// Theorem proof style
#let thm-style-proof(
  thm-type,
  name,
  number,
  body
) = block(width: 100%, breakable: true)[#{
  set align(left)

  if name != none {
    text(style: "italic", name)
  } else {
    text(style: "italic", thm-type)
  }
  text(style: "italic",". ") + body + h(1fr) + $square$
}]
// set style
#let (
  theorem, definition, lemma, corollary,
  remark, proposition, example,
  proof, rules: thm-rules
) = default-theorems("thm-group",
  lang: "en",
  thm-numbering: thm-numbering-heading.with(max-heading-level: 1),
  thm-styling: thm-style,
  proof-styling: thm-style-proof,
  ref-styling: (arg, thm-numbering, ref) => {
    show link: set text(font: "New Computer Modern")
    link(ref.target,[#arg #thm-numbering(ref.element)])
  }
)
#show: thm-rules
#set list(indent: 1em)
// shorthands
#show: shorthands.with(
  ($+-$, $plus.minus$),
  ($|-$, math.tack),
)
// equation and aligned equation
#let num-eq(content) = math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num), content)
// #set math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num))
// #let num-al = content => {
//   equate(breakable: true, sub-numbering: true, number-mode: "line", content)
// }
#show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    // Override equation references.
    show link: set text(font: "New Computer Modern")
    link(el.location(),numbering(
      el.numbering,
      ..counter(eq).at(el.location())
    ))
  } else {
    // Other references as usual.
    it
  }
}

= Introduction
*Claim:* Let $f(x)=(A x)^d/(||(A x)^d||)$. Then, $f(x)$ converges to a periodic point.
#proof[
  Suppose not. Then for every $n in NN$, the $omega$-limit set $F_n$ of the map $f^n$ is not discrete.
  $
  D f (x) = (d dot op("diag")((A x)^(d-1)) dot A ||(A x)^d|| - (A x)^d ((A x)^T)^d/(||(A x)^d||) dot d dot op("diag")((A x)^(d-1)) dot A)/(||(A x)^d||^2)
  $
  so that
  $
  D f (x)(y) &= (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot ((A x)^(d-1) dot.o A y)/(||(A x)^d||^(-1)) \
  & = (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot (op("diag")((A x)^(d-1)))/(||(A x)^d||^(-1)) dot A
  $
  It is a rank $(dim A - 1)$ operator. Consider its eigenvalue decomposition:
  $
  D f (x)(y) = cases(0 & "if" y = x, 1 & "if" y = x)
  $
  where
  $
  (A x)^d perp ((A x)^(d-1) dot.o A y) <=>
  $

  $
  g(y)^T g(y) - lambda (y^T y - 1)
  $
  $
  y = lambda (D g(y)) y
  $
  $
  ((A x)^d)^(k-1)
  $
  
  
  If $f^p (x) = x$ and
  $
  D f^p (x)(x_(-1)) = product_(k=0)^(p-1) (I - (A x_k)^d/(||(A x_k)^d||) ((A x_k)^T)^d/(||(A x_k)^d||)) dot d dot ((A x_k)^(d-1) dot.o A x_(k-1))/(||(A x_k)^d||^(-1)),
  $
  then $x^d = x$ and $d x^(d-1) = d x^((d-1)/d) = d x^((d-1)/d^2)$
  $
  ||D f (x)(y)|| < 1 " iff " y eq.not
  $
  $
  ||(A x)^(d-1) dot.o A y|| < 1 " iff " y eq.not x
  $
  $x dot.o y >=$
  sdfsd sdf sdf sdf s
]#import "@preview/unequivocal-ams:0.1.2": ams-article
#import "@preview/lemmify:0.1.8": *
#import "@preview/equate:0.3.1": equate
#import "@preview/quick-maths:0.2.1": shorthands

#show: ams-article.with(
  title: [Sion's minimax theorem],
  authors: (
    (
      name: "",
      department: [Department of Mathematics],
      organization: [University of Exampleville],
      location: [Tennessee, TN 59341],
      email: "jdoe@math.ue.edu",
      url: "math.ue.edu/~jdoe"
    ),
  ),
  // abstract: "",
  // bibliography: bibliography("refs.bib"),
)
// Theorem style
#let thm-style(
  thm-type, name, number, body
) = grid(
  block(width: 100%, breakable: true)[#{
    set align(left)

    strong(thm-type)
    if number != none {
      " " + strong(number)
    }
  
    if name != none {
      " (" + name + ")"
    }
    strong(".")+" " + text(style: if thm-type=="Definition" {"normal"} else {"italic"}, body)
  }]
)
// Theorem proof style
#let thm-style-proof(
  thm-type,
  name,
  number,
  body
) = block(width: 100%, breakable: true)[#{
  set align(left)

  if name != none {
    text(style: "italic", name)
  } else {
    text(style: "italic", thm-type)
  }
  text(style: "italic",". ") + body + h(1fr) + $square$
}]
// set style
#let (
  theorem, definition, lemma, corollary,
  remark, proposition, example,
  proof, rules: thm-rules
) = default-theorems("thm-group",
  lang: "en",
  thm-numbering: thm-numbering-heading.with(max-heading-level: 1),
  thm-styling: thm-style,
  proof-styling: thm-style-proof,
  ref-styling: (arg, thm-numbering, ref) => {
    show link: set text(font: "New Computer Modern")
    link(ref.target,[#arg #thm-numbering(ref.element)])
  }
)
#show: thm-rules
#set list(indent: 1em)
// shorthands
#show: shorthands.with(
  ($+-$, $plus.minus$),
  ($|-$, math.tack),
)
// equation and aligned equation
#let num-eq(content) = math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num), content)
// #set math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num))
// #let num-al = content => {
//   equate(breakable: true, sub-numbering: true, number-mode: "line", content)
// }
#show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    // Override equation references.
    show link: set text(font: "New Computer Modern")
    link(el.location(),numbering(
      el.numbering,
      ..counter(eq).at(el.location())
    ))
  } else {
    // Other references as usual.
    it
  }
}

= Introduction
*Claim:* Let $f(x)=(A x)^d/(||(A x)^d||)$. Then, $f(x)$ converges to a periodic point.
#proof[
  Suppose not. Then for every $n in NN$, the $omega$-limit set $F_n$ of the map $f^n$ is not discrete.
  $
  D f (x) = (d dot op("diag")((A x)^(d-1)) dot A ||(A x)^d|| - (A x)^d ((A x)^T)^d/(||(A x)^d||) dot d dot op("diag")((A x)^(d-1)) dot A)/(||(A x)^d||^2)
  $
  so that
  $
  D f (x)(y) &= (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot ((A x)^(d-1) dot.o A y)/(||(A x)^d||^(-1)) \
  & = (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot (op("diag")((A x)^(d-1)))/(||(A x)^d||^(-1)) dot A
  $
  It is a rank $(dim A - 1)$ operator. Consider its eigenvalue decomposition:
  $
  D f (x)(y) = cases(0 & "if" y = x, 1 & "if" y = x)
  $
  where
  $
  (A x)^d perp ((A x)^(d-1) dot.o A y) <=>
  $

  $
  g(y)^T g(y) - lambda (y^T y - 1)
  $
  $
  y = lambda (D g(y)) y
  $
  $
  ((A x)^d)^(k-1)
  $
  
  
  If $f^p (x) = x$ and
  $
  D f^p (x)(x_(-1)) = product_(k=0)^(p-1) (I - (A x_k)^d/(||(A x_k)^d||) ((A x_k)^T)^d/(||(A x_k)^d||)) dot d dot ((A x_k)^(d-1) dot.o A x_(k-1))/(||(A x_k)^d||^(-1)),
  $
  then $x^d = x$ and $d x^(d-1) = d x^((d-1)/d) = d x^((d-1)/d^2)$
  $
  ||D f (x)(y)|| < 1 " iff " y eq.not
  $
  $
  ||(A x)^(d-1) dot.o A y|| < 1 " iff " y eq.not x
  $
  $x dot.o y >=$
  sdfsd sdf sdf sdf s
]#import "@preview/unequivocal-ams:0.1.2": ams-article
#import "@preview/lemmify:0.1.8": *
#import "@preview/equate:0.3.1": equate
#import "@preview/quick-maths:0.2.1": shorthands

#show: ams-article.with(
  title: [Sion's minimax theorem],
  authors: (
    (
      name: "",
      department: [Department of Mathematics],
      organization: [University of Exampleville],
      location: [Tennessee, TN 59341],
      email: "jdoe@math.ue.edu",
      url: "math.ue.edu/~jdoe"
    ),
  ),
  // abstract: "",
  // bibliography: bibliography("refs.bib"),
)
// Theorem style
#let thm-style(
  thm-type, name, number, body
) = grid(
  block(width: 100%, breakable: true)[#{
    set align(left)

    strong(thm-type)
    if number != none {
      " " + strong(number)
    }
  
    if name != none {
      " (" + name + ")"
    }
    strong(".")+" " + text(style: if thm-type=="Definition" {"normal"} else {"italic"}, body)
  }]
)
// Theorem proof style
#let thm-style-proof(
  thm-type,
  name,
  number,
  body
) = block(width: 100%, breakable: true)[#{
  set align(left)

  if name != none {
    text(style: "italic", name)
  } else {
    text(style: "italic", thm-type)
  }
  text(style: "italic",". ") + body + h(1fr) + $square$
}]
// set style
#let (
  theorem, definition, lemma, corollary,
  remark, proposition, example,
  proof, rules: thm-rules
) = default-theorems("thm-group",
  lang: "en",
  thm-numbering: thm-numbering-heading.with(max-heading-level: 1),
  thm-styling: thm-style,
  proof-styling: thm-style-proof,
  ref-styling: (arg, thm-numbering, ref) => {
    show link: set text(font: "New Computer Modern")
    link(ref.target,[#arg #thm-numbering(ref.element)])
  }
)
#show: thm-rules
#set list(indent: 1em)
// shorthands
#show: shorthands.with(
  ($+-$, $plus.minus$),
  ($|-$, math.tack),
)
// equation and aligned equation
#let num-eq(content) = math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num), content)
// #set math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num))
// #let num-al = content => {
//   equate(breakable: true, sub-numbering: true, number-mode: "line", content)
// }
#show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    // Override equation references.
    show link: set text(font: "New Computer Modern")
    link(el.location(),numbering(
      el.numbering,
      ..counter(eq).at(el.location())
    ))
  } else {
    // Other references as usual.
    it
  }
}

= Introduction
*Claim:* Let $f(x)=(A x)^d/(||(A x)^d||)$. Then, $f(x)$ converges to a periodic point.
#proof[
  Suppose not. Then for every $n in NN$, the $omega$-limit set $F_n$ of the map $f^n$ is not discrete.
  $
  D f (x) = (d dot op("diag")((A x)^(d-1)) dot A ||(A x)^d|| - (A x)^d ((A x)^T)^d/(||(A x)^d||) dot d dot op("diag")((A x)^(d-1)) dot A)/(||(A x)^d||^2)
  $
  so that
  $
  D f (x)(y) &= (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot ((A x)^(d-1) dot.o A y)/(||(A x)^d||^(-1)) \
  & = (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot (op("diag")((A x)^(d-1)))/(||(A x)^d||^(-1)) dot A
  $
  It is a rank $(dim A - 1)$ operator. Consider its eigenvalue decomposition:
  $
  D f (x)(y) = cases(0 & "if" y = x, 1 & "if" y = x)
  $
  where
  $
  (A x)^d perp ((A x)^(d-1) dot.o A y) <=>
  $

  $
  g(y)^T g(y) - lambda (y^T y - 1)
  $
  $
  y = lambda (D g(y)) y
  $
  $
  ((A x)^d)^(k-1)
  $
  
  
  If $f^p (x) = x$ and
  $
  D f^p (x)(x_(-1)) = product_(k=0)^(p-1) (I - (A x_k)^d/(||(A x_k)^d||) ((A x_k)^T)^d/(||(A x_k)^d||)) dot d dot ((A x_k)^(d-1) dot.o A x_(k-1))/(||(A x_k)^d||^(-1)),
  $
  then $x^d = x$ and $d x^(d-1) = d x^((d-1)/d) = d x^((d-1)/d^2)$
  $
  ||D f (x)(y)|| < 1 " iff " y eq.not
  $
  $
  ||(A x)^(d-1) dot.o A y|| < 1 " iff " y eq.not x
  $
  $x dot.o y >=$
  sdfsd sdf sdf sdf s
]#import "@preview/unequivocal-ams:0.1.2": ams-article
#import "@preview/lemmify:0.1.8": *
#import "@preview/equate:0.3.1": equate /* PROTOCOL WORKS */
#import "@preview/quick-maths:0.2.1": shorthands

#show: ams-article.with(
  title: [Sion's minimax theorem sd],
  authors: (
    (
      name: "",
      department: [Department of Mathematics],
      organization: [University of Exampleville],
      location: [Tennessee, TN 59341],
      email: "jdoe@math.ue.edu",
      url: "math.ue.edu/~jdoe"
    ),
  ),
  // abstract: "",
  // bibliography: bibliography("refs.bib"),
)
// Theorem style
#let thm-style(
  thm-type, name, number, body
) = grid(
  block(width: 100%, breakable: true)[#{
    set align(left)

    strong(thm-type)
    if number != none {
      " " + strong(number)
    }
  
    if name != none {
      " (" + name + ")"
    }
    strong(".")+" " + text(style: if thm-type=="Definition" {"normal"} else {"italic"}, body)
  }]
)
// Theorem proof style
#let thm-style-proof(
  thm-type,
  name,
  number,
  body
) = block(width: 100%, breakable: true)[#{
  set align(left)

  if name != none {
    text(style: "italic", name)
  } else {
    text(style: "italic", thm-type)
  }
  text(style: "italic",". ") + body + h(1fr) + $square$
}]
// set style
#let (
  theorem, definition, lemma, corollary,
  remark, proposition, example,
  proof, rules: thm-rules
) = default-theorems("thm-group",
  lang: "en",
  thm-numbering: thm-numbering-heading.with(max-heading-level: 1),
  thm-styling: thm-style,
  proof-styling: thm-style-proof,
  ref-styling: (arg, thm-numbering, ref) => {
    show link: set text(font: "New Computer Modern")
    link(ref.target,[#arg #thm-numbering(ref.element)])
  }
)
#show: thm-rules
#set list(indent: 1em)
// shorthands
#show: shorthands.with(
  ($+-$, $plus.minus$),
  ($|-$, math.tack),
)
// equation and aligned equation
#let num-eq(content) = math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num), content)
// #set math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num))
// #let num-al = content => {
//   equate(breakable: true, sub-numbering: true, number-mode: "line", content)
// }
#show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    // Override equation references.
    show link: set text(font: "New Computer Modern")
    link(el.location(),numbering(
      el.numbering,
      ..counter(eq).at(el.location())
    ))
  } else {
    // Other references as usual.
    it
  }
}

= Introduction
sd sduisdufu isudif sdnfjan lsdkfnla kjdf
*Claim:* Let $f(x)=(A x)^d/(||(A x)^d||)$. Then, $f(x)$ converges to a periodic point.
#proof[
  Suppose not. Then for every $n in NN$, the $omega$-limit set $F_n$ of the map $f^n$ is not discrete.
  $
  D f (x) = (d dot op("diag")((A x)^(d-1)) dot A ||(A x)^d|| - (A x)^d ((A x)^T)^d/(||(A x)^d||) dot d dot op("diag")((A x)^(d-1)) dot A)/(||(A x)^d||^2)
  $
  so that
  $
  D f (x)(y) &= (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot ((A x)^(d-1) dot.o A y)/(||(A x)^d||^(-1)) \
  & = (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot (op("diag")((A x)^(d-1)))/(||(A x)^d||^(-1)) dot A
  $
  It is a rank $(dim A - 1)$ operator. Consider its eigenvalue decomposition:
  $
  D f (x)(y) = cases(0 & "if" y = x, 1 & "if" y = x)
  $
  where
  $
  (A x)^d perp ((A x)^(d-1) dot.o A y) <=>
  $

  $
  g(y)^T g(y) - lambda (y^T y - 1)
  $
  $
  y = lambda (D g(y)) y
  $
  $
  ((A x)^d)^(k-1)
  $
  
  
  If $f^p (x) = x$ and
  $
  D f^p (x)(x_(-1)) = product_(k=0)^(p-1) (I - (A x_k)^d/(||(A x_k)^d||) ((A x_k)^T)^d/(||(A x_k)^d||)) dot d dot ((A x_k)^(d-1) dot.o A x_(k-1))/(||(A x_k)^d||^(-1)),
  $
  then $x^d = x$ and $d x^(d-1) = d x^((d-1)/d) = d x^((d-1)/d^2)$
  $
  ||D f (x)(y)|| < 1 " iff " y eq.not
  $
  $
  ||(A x)^(d-1) dot.o A y|| < 1 " iff " y eq.not x
  $
  $x dot.o y >=$
  sdfsd sdf sdf sdf s
]#import "@preview/unequivocal-ams:0.1.2": ams-article
#import "@preview/lemmify:0.1.8": *
#import "@preview/equate:0.3.1": equate
#import "@preview/quick-maths:0.2.1": shorthands

#show: ams-article.with(
  title: [Sion's minimax theorem],
  authors: (
    (
      name: "",
      department: [Department of Mathematics],
      organization: [University of Exampleville],
      location: [Tennessee, TN 59341],
      email: "jdoe@math.ue.edu",
      url: "math.ue.edu/~jdoe"
    ),
  ),
  // abstract: "",
  // bibliography: bibliography("refs.bib"),
)
// Theorem style
#let thm-style(
  thm-type, name, number, body
) = grid(
  block(width: 100%, breakable: true)[#{
    set align(left)

    strong(thm-type)
    if number != none {
      " " + strong(number)
    }
  
    if name != none {
      " (" + name + ")"
    }
    strong(".")+" " + text(style: if thm-type=="Definition" {"normal"} else {"italic"}, body)
  }]
)
// Theorem proof style
#let thm-style-proof(
  thm-type,
  name,
  number,
  body
) = block(width: 100%, breakable: true)[#{
  set align(left)

  if name != none {
    text(style: "italic", name)
  } else {
    text(style: "italic", thm-type)
  }
  text(style: "italic",". ") + body + h(1fr) + $square$
}]
// set style
#let (
  theorem, definition, lemma, corollary,
  remark, proposition, example,
  proof, rules: thm-rules
) = default-theorems("thm-group",
  lang: "en",
  thm-numbering: thm-numbering-heading.with(max-heading-level: 1),
  thm-styling: thm-style,
  proof-styling: thm-style-proof,
  ref-styling: (arg, thm-numbering, ref) => {
    show link: set text(font: "New Computer Modern")
    link(ref.target,[#arg #thm-numbering(ref.element)])
  }
)
#show: thm-rules
#set list(indent: 1em)
// shorthands
#show: shorthands.with(
  ($+-$, $plus.minus$),
  ($|-$, math.tack),
)
// equation and aligned equation
#let num-eq(content) = math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num), content)
// #set math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num))
// #let num-al = content => {
//   equate(breakable: true, sub-numbering: true, number-mode: "line", content)
// }
#show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    // Override equation references.
    show link: set text(font: "New Computer Modern")
    link(el.location(),numbering(
      el.numbering,
      ..counter(eq).at(el.location())
    ))
  } else {
    // Other references as usual.
    it
  }
}

= Introduction
*Claim:* Let $f(x)=(A x)^d/(||(A x)^d||)$. Then, $f(x)$ converges to a periodic point.
#proof[
  Suppose not. Then for every $n in NN$, the $omega$-limit set $F_n$ of the map $f^n$ is not discrete.
  $
  D f (x) = (d dot op("diag")((A x)^(d-1)) dot A ||(A x)^d|| - (A x)^d ((A x)^T)^d/(||(A x)^d||) dot d dot op("diag")((A x)^(d-1)) dot A)/(||(A x)^d||^2)
  $
  so that
  $
  D f (x)(y) &= (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot ((A x)^(d-1) dot.o A y)/(||(A x)^d||^(-1)) \
  & = (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot (op("diag")((A x)^(d-1)))/(||(A x)^d||^(-1)) dot A
  $
  It is a rank $(dim A - 1)$ operator. Consider its eigenvalue decomposition:
  $
  D f (x)(y) = cases(0 & "if" y = x, 1 & "if" y = x)
  $
  where
  $
  (A x)^d perp ((A x)^(d-1) dot.o A y) <=>
  $

  $
  g(y)^T g(y) - lambda (y^T y - 1)
  $
  $
  y = lambda (D g(y)) y
  $
  $
  ((A x)^d)^(k-1)
  $
  
  
  If $f^p (x) = x$ and
  $
  D f^p (x)(x_(-1)) = product_(k=0)^(p-1) (I - (A x_k)^d/(||(A x_k)^d||) ((A x_k)^T)^d/(||(A x_k)^d||)) dot d dot ((A x_k)^(d-1) dot.o A x_(k-1))/(||(A x_k)^d||^(-1)),
  $
  then $x^d = x$ and $d x^(d-1) = d x^((d-1)/d) = d x^((d-1)/d^2)$
  $
  ||D f (x)(y)|| < 1 " iff " y eq.not
  $
  $
  ||(A x)^(d-1) dot.o A y|| < 1 " iff " y eq.not x
  $
  $x dot.o y >=$
  sdfsd sdf sdf sdf s
]#import "@preview/unequivocal-ams:0.1.2": ams-article
#import "@preview/lemmify:0.1.8": *
#import "@preview/equate:0.3.1": equate
#import "@preview/quick-maths:0.2.1": shorthands

#show: ams-article.with(
  title: [Sion's minimax theorem],
  authors: (
    (
      name: "",
      department: [Department of Mathematics],
      organization: [University of Exampleville],
      location: [Tennessee, TN 59341],
      email: "jdoe@math.ue.edu",
      url: "math.ue.edu/~jdoe"
    ),
  ),
  // abstract: "",
  // bibliography: bibliography("refs.bib"),
)
// Theorem style
#let thm-style(
  thm-type, name, number, body
) = grid(
  block(width: 100%, breakable: true)[#{
    set align(left)

    strong(thm-type)
    if number != none {
      " " + strong(number)
    }
  
    if name != none {
      " (" + name + ")"
    }
    strong(".")+" " + text(style: if thm-type=="Definition" {"normal"} else {"italic"}, body)
  }]
)
// Theorem proof style
#let thm-style-proof(
  thm-type,
  name,
  number,
  body
) = block(width: 100%, breakable: true)[#{
  set align(left)

  if name != none {
    text(style: "italic", name)
  } else {
    text(style: "italic", thm-type)
  }
  text(style: "italic",". ") + body + h(1fr) + $square$
}]
// set style
#let (
  theorem, definition, lemma, corollary,
  remark, proposition, example,
  proof, rules: thm-rules
) = default-theorems("thm-group",
  lang: "en",
  thm-numbering: thm-numbering-heading.with(max-heading-level: 1),
  thm-styling: thm-style,
  proof-styling: thm-style-proof,
  ref-styling: (arg, thm-numbering, ref) => {
    show link: set text(font: "New Computer Modern")
    link(ref.target,[#arg #thm-numbering(ref.element)])
  }
)
#show: thm-rules
#set list(indent: 1em)
// shorthands
#show: shorthands.with(
  ($+-$, $plus.minus$),
  ($|-$, math.tack),
)
// equation and aligned equation
#let num-eq(content) = math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num), content)
// #set math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num))
// #let num-al = content => {
//   equate(breakable: true, sub-numbering: true, number-mode: "line", content)
// }
#show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    // Override equation references.
    show link: set text(font: "New Computer Modern")
    link(el.location(),numbering(
      el.numbering,
      ..counter(eq).at(el.location())
    ))
  } else {
    // Other references as usual.
    it
  }
}

= Introduction
*Claim:* Let $f(x)=(A x)^d/(||(A x)^d||)$. Then, $f(x)$ converges to a periodic point.
#proof[
  Suppose not. Then for every $n in NN$, the $omega$-limit set $F_n$ of the map $f^n$ is not discrete.
  $
  D f (x) = (d dot op("diag")((A x)^(d-1)) dot A ||(A x)^d|| - (A x)^d ((A x)^T)^d/(||(A x)^d||) dot d dot op("diag")((A x)^(d-1)) dot A)/(||(A x)^d||^2)
  $
  so that
  $
  D f (x)(y) &= (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot ((A x)^(d-1) dot.o A y)/(||(A x)^d||^(-1)) \
  & = (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot (op("diag")((A x)^(d-1)))/(||(A x)^d||^(-1)) dot A
  $
  It is a rank $(dim A - 1)$ operator. Consider its eigenvalue decomposition:
  $
  D f (x)(y) = cases(0 & "if" y = x, 1 & "if" y = x)
  $
  where
  $
  (A x)^d perp ((A x)^(d-1) dot.o A y) <=>
  $

  $
  g(y)^T g(y) - lambda (y^T y - 1)
  $
  $
  y = lambda (D g(y)) y
  $
  $
  ((A x)^d)^(k-1)
  $
  
  
  If $f^p (x) = x$ and
  $
  D f^p (x)(x_(-1)) = product_(k=0)^(p-1) (I - (A x_k)^d/(||(A x_k)^d||) ((A x_k)^T)^d/(||(A x_k)^d||)) dot d dot ((A x_k)^(d-1) dot.o A x_(k-1))/(||(A x_k)^d||^(-1)),
  $
  then $x^d = x$ and $d x^(d-1) = d x^((d-1)/d) = d x^((d-1)/d^2)$
  $
  ||D f (x)(y)|| < 1 " iff " y eq.not
  $
  $
  ||(A x)^(d-1) dot.o A y|| < 1 " iff " y eq.not x
  $
  $x dot.o y >=$
  sdfsd sdf sdf sdf s
]#import "@preview/unequivocal-ams:0.1.2": ams-article
#import "@preview/lemmify:0.1.8": *
#import "@preview/equate:0.3.1": equate
#import "@preview/quick-maths:0.2.1": shorthands

#show: ams-article.with(
  title: [Sion's minimax theorem],
  authors: (
    (
      name: "",
      department: [Department of Mathematics],
      organization: [University of Exampleville],
      location: [Tennessee, TN 59341],
      email: "jdoe@math.ue.edu",
      url: "math.ue.edu/~jdoe"
    ),
  ),
  // abstract: "",
  // bibliography: bibliography("refs.bib"),
)
// Theorem style
#let thm-style(
  thm-type, name, number, body
) = grid(
  block(width: 100%, breakable: true)[#{
    set align(left)

    strong(thm-type)
    if number != none {
      " " + strong(number)
    }
  
    if name != none {
      " (" + name + ")"
    }
    strong(".")+" " + text(style: if thm-type=="Definition" {"normal"} else {"italic"}, body)
  }]
)
// Theorem proof style
#let thm-style-proof(
  thm-type,
  name,
  number,
  body
) = block(width: 100%, breakable: true)[#{
  set align(left)

  if name != none {
    text(style: "italic", name)
  } else {
    text(style: "italic", thm-type)
  }
  text(style: "italic",". ") + body + h(1fr) + $square$
}]
// set style
#let (
  theorem, definition, lemma, corollary,
  remark, proposition, example,
  proof, rules: thm-rules
) = default-theorems("thm-group",
  lang: "en",
  thm-numbering: thm-numbering-heading.with(max-heading-level: 1),
  thm-styling: thm-style,
  proof-styling: thm-style-proof,
  ref-styling: (arg, thm-numbering, ref) => {
    show link: set text(font: "New Computer Modern")
    link(ref.target,[#arg #thm-numbering(ref.element)])
  }
)
#show: thm-rules
#set list(indent: 1em)
// shorthands
#show: shorthands.with(
  ($+-$, $plus.minus$),
  ($|-$, math.tack),
)
// equation and aligned equation
#let num-eq(content) = math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num), content)
// #set math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num))
// #let num-al = content => {
//   equate(breakable: true, sub-numbering: true, number-mode: "line", content)
// }
#show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    // Override equation references.
    show link: set text(font: "New Computer Modern")
    link(el.location(),numbering(
      el.numbering,
      ..counter(eq).at(el.location())
    ))
  } else {
    // Other references as usual.
    it
  }
}

= Introduction
*Claim:* Let $f(x)=(A x)^d/(||(A x)^d||)$. Then, $f(x)$ converges to a periodic point.
#proof[
  Suppose not. Then for every $n in NN$, the $omega$-limit set $F_n$ of the map $f^n$ is not discrete.
  $
  D f (x) = (d dot op("diag")((A x)^(d-1)) dot A ||(A x)^d|| - (A x)^d ((A x)^T)^d/(||(A x)^d||) dot d dot op("diag")((A x)^(d-1)) dot A)/(||(A x)^d||^2)
  $
  so that
  $
  D f (x)(y) &= (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot ((A x)^(d-1) dot.o A y)/(||(A x)^d||^(-1)) \
  & = (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot (op("diag")((A x)^(d-1)))/(||(A x)^d||^(-1)) dot A
  $
  It is a rank $(dim A - 1)$ operator. Consider its eigenvalue decomposition:
  $
  D f (x)(y) = cases(0 & "if" y = x, 1 & "if" y = x)
  $
  where
  $
  (A x)^d perp ((A x)^(d-1) dot.o A y) <=>
  $

  $
  g(y)^T g(y) - lambda (y^T y - 1)
  $
  $
  y = lambda (D g(y)) y
  $
  $
  ((A x)^d)^(k-1)
  $
  
  
  If $f^p (x) = x$ and
  $
  D f^p (x)(x_(-1)) = product_(k=0)^(p-1) (I - (A x_k)^d/(||(A x_k)^d||) ((A x_k)^T)^d/(||(A x_k)^d||)) dot d dot ((A x_k)^(d-1) dot.o A x_(k-1))/(||(A x_k)^d||^(-1)),
  $
  then $x^d = x$ and $d x^(d-1) = d x^((d-1)/d) = d x^((d-1)/d^2)$
  $
  ||D f (x)(y)|| < 1 " iff " y eq.not
  $
  $
  ||(A x)^(d-1) dot.o A y|| < 1 " iff " y eq.not x
  $
  $x dot.o y >=$
  sdfsd sdf sdf sdf s
]#import "@preview/unequivocal-ams:0.1.2": ams-article
#import "@preview/lemmify:0.1.8": *
#import "@preview/equate:0.3.1": equate /* PROTOCOL WORKS */
#import "@preview/quick-maths:0.2.1": shorthands

#show: ams-article.with(
  title: [Sion's minimax theorem],
  authors: (
    (
      name: "",
      department: [Department of Mathematics],
      organization: [University of Exampleville],
      location: [Tennessee, TN 59341],
      email: "jdoe@math.ue.edu",
      url: "math.ue.edu/~jdoe"
    ),
  ),
  // abstract: "",
  // bibliography: bibliography("refs.bib"),
)
// Theorem style
#let thm-style(
  thm-type, name, number, body
) = grid(
  block(width: 100%, breakable: true)[#{
    set align(left)

    strong(thm-type)
    if number != none {
      " " + strong(number)
    }
  
    if name != none {
      " (" + name + ")"
    }
    strong(".")+" " + text(style: if thm-type=="Definition" {"normal"} else {"italic"}, body)
  }]
)
// Theorem proof style
#let thm-style-proof(
  thm-type,
  name,
  number,
  body
) = block(width: 100%, breakable: true)[#{
  set align(left)

  if name != none {
    text(style: "italic", name)
  } else {
    text(style: "italic", thm-type)
  }
  text(style: "italic",". ") + body + h(1fr) + $square$
}]
// set style
#let (
  theorem, definition, lemma, corollary,
  remark, proposition, example,
  proof, rules: thm-rules
) = default-theorems("thm-group",
  lang: "en",
  thm-numbering: thm-numbering-heading.with(max-heading-level: 1),
  thm-styling: thm-style,
  proof-styling: thm-style-proof,
  ref-styling: (arg, thm-numbering, ref) => {
    show link: set text(font: "New Computer Modern")
    link(ref.target,[#arg #thm-numbering(ref.element)])
  }
)
#show: thm-rules
#set list(indent: 1em)
// shorthands
#show: shorthands.with(
  ($+-$, $plus.minus$),
  ($|-$, math.tack),
)
// equation and aligned equation
#let num-eq(content) = math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num), content)
// #set math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num))
// #let num-al = content => {
//   equate(breakable: true, sub-numbering: true, number-mode: "line", content)
// }
#show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    // Override equation references.
    show link: set text(font: "New Computer Modern")
    link(el.location(),numbering(
      el.numbering,
      ..counter(eq).at(el.location())
    ))
  } else {
    // Other references as usual.
    it
  }
}

= Introduction
sd sduisdufu isudif sdnfjan lsdkfnla kjdf
*Claim:* Let $f(x)=(A x)^d/(||(A x)^d||)$. Then, $f(x)$ converges to a periodic point.
#proof[
  Suppose not. Then for every $n in NN$, the $omega$-limit set $F_n$ of the map $f^n$ is not discrete.
  $
  D f (x) = (d dot op("diag")((A x)^(d-1)) dot A ||(A x)^d|| - (A x)^d ((A x)^T)^d/(||(A x)^d||) dot d dot op("diag")((A x)^(d-1)) dot A)/(||(A x)^d||^2)
  $
  so that
  $
  D f (x)(y) &= (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot ((A x)^(d-1) dot.o A y)/(||(A x)^d||^(-1)) \
  & = (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot (op("diag")((A x)^(d-1)))/(||(A x)^d||^(-1)) dot A
  $
  It is a rank $(dim A - 1)$ operator. Consider its eigenvalue decomposition:
  $
  D f (x)(y) = cases(0 & "if" y = x, 1 & "if" y = x)
  $
  where
  $
  (A x)^d perp ((A x)^(d-1) dot.o A y) <=>
  $

  $
  g(y)^T g(y) - lambda (y^T y - 1)
  $
  $
  y = lambda (D g(y)) y
  $
  $
  ((A x)^d)^(k-1)
  $
  
  
  If $f^p (x) = x$ and
  $
  D f^p (x)(x_(-1)) = product_(k=0)^(p-1) (I - (A x_k)^d/(||(A x_k)^d||) ((A x_k)^T)^d/(||(A x_k)^d||)) dot d dot ((A x_k)^(d-1) dot.o A x_(k-1))/(||(A x_k)^d||^(-1)),
  $
  then $x^d = x$ and $d x^(d-1) = d x^((d-1)/d) = d x^((d-1)/d^2)$
  $
  ||D f (x)(y)|| < 1 " iff " y eq.not
  $
  $
  ||(A x)^(d-1) dot.o A y|| < 1 " iff " y eq.not x
  $
  $x dot.o y >=$
  sdfsd sdf sdf sdf s
]
#import "@preview/unequivocal-ams:0.1.2": ams-article
#import "@preview/lemmify:0.1.8": *
#import "@preview/equate:0.3.1": equate
#import "@preview/quick-maths:0.2.1": shorthands

#show: ams-article.with(
  title: [Sion's minimax theorem],
  authors: (
    (
      name: "",
      department: [Department of Mathematics],
      organization: [University of Exampleville],
      location: [Tennessee, TN 59341],
      email: "jdoe@math.ue.edu",
      url: "math.ue.edu/~jdoe"
    ),
  ),
  // abstract: "",
  // bibliography: bibliography("refs.bib"),
)
// Theorem style
#let thm-style(
  thm-type, name, number, body
) = grid(
  block(width: 100%, breakable: true)[#{
    set align(left)

    strong(thm-type)
    if number != none {
      " " + strong(number)
    }
  
    if name != none {
      " (" + name + ")"
    }
    strong(".")+" " + text(style: if thm-type=="Definition" {"normal"} else {"italic"}, body)
  }]
)
// Theorem proof style
#let thm-style-proof(
  thm-type,
  name,
  number,
  body
) = block(width: 100%, breakable: true)[#{
  set align(left)

  if name != none {
    text(style: "italic", name)
  } else {
    text(style: "italic", thm-type)
  }
  text(style: "italic",". ") + body + h(1fr) + $square$
}]
// set style
#let (
  theorem, definition, lemma, corollary,
  remark, proposition, example,
  proof, rules: thm-rules
) = default-theorems("thm-group",
  lang: "en",
  thm-numbering: thm-numbering-heading.with(max-heading-level: 1),
  thm-styling: thm-style,
  proof-styling: thm-style-proof,
  ref-styling: (arg, thm-numbering, ref) => {
    show link: set text(font: "New Computer Modern")
    link(ref.target,[#arg #thm-numbering(ref.element)])
  }
)
#show: thm-rules
#set list(indent: 1em)
// shorthands
#show: shorthands.with(
  ($+-$, $plus.minus$),
  ($|-$, math.tack),
)
// equation and aligned equation
#let num-eq(content) = math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num), content)
// #set math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num))
// #let num-al = content => {
//   equate(breakable: true, sub-numbering: true, number-mode: "line", content)
// }
#show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    // Override equation references.
    show link: set text(font: "New Computer Modern")
    link(el.location(),numbering(
      el.numbering,
      ..counter(eq).at(el.location())
    ))
  } else {
    // Other references as usual.
    it
  }
}

= Introduction
*Claim:* Let $f(x)=(A x)^d/(||(A x)^d||)$. Then, $f(x)$ converges to a periodic point.
#proof[
  Suppose not. Then for every $n in NN$, the $omega$-limit set $F_n$ of the map $f^n$ is not discrete.
  $
  D f (x) = (d dot op("diag")((A x)^(d-1)) dot A ||(A x)^d|| - (A x)^d ((A x)^T)^d/(||(A x)^d||) dot d dot op("diag")((A x)^(d-1)) dot A)/(||(A x)^d||^2)
  $
  so that
  $
  D f (x)(y) &= (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot ((A x)^(d-1) dot.o A y)/(||(A x)^d||^(-1)) \
  & = (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot (op("diag")((A x)^(d-1)))/(||(A x)^d||^(-1)) dot A
  $
  It is a rank $(dim A - 1)$ operator. Consider its eigenvalue decomposition:
  $
  D f (x)(y) = cases(0 & "if" y = x, 1 & "if" y = x)
  $
  where
  $
  (A x)^d perp ((A x)^(d-1) dot.o A y) <=>
  $

  $
  g(y)^T g(y) - lambda (y^T y - 1)
  $
  $
  y = lambda (D g(y)) y
  $
  $
  ((A x)^d)^(k-1)
  $
  
  
  If $f^p (x) = x$ and
  $
  D f^p (x)(x_(-1)) = product_(k=0)^(p-1) (I - (A x_k)^d/(||(A x_k)^d||) ((A x_k)^T)^d/(||(A x_k)^d||)) dot d dot ((A x_k)^(d-1) dot.o A x_(k-1))/(||(A x_k)^d||^(-1)),
  $
  then $x^d = x$ and $d x^(d-1) = d x^((d-1)/d) = d x^((d-1)/d^2)$
  $
  ||D f (x)(y)|| < 1 " iff " y eq.not
  $
  $
  ||(A x)^(d-1) dot.o A y|| < 1 " iff " y eq.not x
  $
  $x dot.o y >=$
  sdfsd sdf sdf sdf s
]#import "@preview/unequivocal-ams:0.1.2": ams-article
#import "@preview/lemmify:0.1.8": *
#import "@preview/equate:0.3.1": equate /* PROTOCOL WORKS */
#import "@preview/quick-maths:0.2.1": shorthands

#show: ams-article.with(
  title: [Sion's minimax theorem],
  authors: (
    (
      name: "",
      department: [Department of Mathematics],
      organization: [University of Exampleville],
      location: [Tennessee, TN 59341],
      email: "jdoe@math.ue.edu",
      url: "math.ue.edu/~jdoe"
    ),
  ),
  // abstract: "",
  // bibliography: bibliography("refs.bib"),
)
// Theorem style
#let thm-style(
  thm-type, name, number, body
) = grid(
  block(width: 100%, breakable: true)[#{
    set align(left)

    strong(thm-type)
    if number != none {
      " " + strong(number)
    }
  
    if name != none {
      " (" + name + ")"
    }
    strong(".")+" " + text(style: if thm-type=="Definition" {"normal"} else {"italic"}, body)
  }]
)
// Theorem proof style
#let thm-style-proof(
  thm-type,
  name,
  number,
  body
) = block(width: 100%, breakable: true)[#{
  set align(left)

  if name != none {
    text(style: "italic", name)
  } else {
    text(style: "italic", thm-type)
  }
  text(style: "italic",". ") + body + h(1fr) + $square$
}]
// set style
#let (
  theorem, definition, lemma, corollary,
  remark, proposition, example,
  proof, rules: thm-rules
) = default-theorems("thm-group",
  lang: "en",
  thm-numbering: thm-numbering-heading.with(max-heading-level: 1),
  thm-styling: thm-style,
  proof-styling: thm-style-proof,
  ref-styling: (arg, thm-numbering, ref) => {
    show link: set text(font: "New Computer Modern")
    link(ref.target,[#arg #thm-numbering(ref.element)])
  }
)
#show: thm-rules
#set list(indent: 1em)
// shorthands
#show: shorthands.with(
  ($+-$, $plus.minus$),
  ($|-$, math.tack),
)
// equation and aligned equation
#let num-eq(content) = math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num), content)
// #set math.equation(block: true, numbering: num => numbering("(1.1)", counter(heading).get().first(), num))
// #let num-al = content => {
//   equate(breakable: true, sub-numbering: true, number-mode: "line", content)
// }
#show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    // Override equation references.
    show link: set text(font: "New Computer Modern")
    link(el.location(),numbering(
      el.numbering,
      ..counter(eq).at(el.location())
    ))
  } else {
    // Other references as usual.
    it
  }
}

= Introduction
sd sduisdufu isudif sdnfjan lsdkfnla kjdf
*Claim:* Let $f(x)=(A x)^d/(||(A x)^d||)$. Then, $f(x)$ converges to a periodic point.
#proof[
  Suppose not. Then for every $n in NN$, the $omega$-limit set $F_n$ of the map $f^n$ is not discrete.
  $
  D f (x) = (d dot op("diag")((A x)^(d-1)) dot A ||(A x)^d|| - (A x)^d ((A x)^T)^d/(||(A x)^d||) dot d dot op("diag")((A x)^(d-1)) dot A)/(||(A x)^d||^2)
  $
  so that
  $
  D f (x)(y) &= (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot ((A x)^(d-1) dot.o A y)/(||(A x)^d||^(-1)) \
  & = (I - (A x)^d/(||(A x)^d||) ((A x)^T)^d/(||(A x)^d||)) dot d dot (op("diag")((A x)^(d-1)))/(||(A x)^d||^(-1)) dot A
  $
  It is a rank $(dim A - 1)$ operator. Consider its eigenvalue decomposition:
  $
  D f (x)(y) = cases(0 & "if" y = x, 1 & "if" y = x)
  $
  where
  $
  (A x)^d perp ((A x)^(d-1) dot.o A y) <=>
  $

  $
  g(y)^T g(y) - lambda (y^T y - 1)
  $
  $
  y = lambda (D g(y)) y
  $
  $
  ((A x)^d)^(k-1)
  $
  
  
  If $f^p (x) = x$ and
  $
  D f^p (x)(x_(-1)) = product_(k=0)^(p-1) (I - (A x_k)^d/(||(A x_k)^d||) ((A x_k)^T)^d/(||(A x_k)^d||)) dot d dot ((A x_k)^(d-1) dot.o A x_(k-1))/(||(A x_k)^d||^(-1)),
  $
  then $x^d = x$ and $d x^(d-1) = d x^((d-1)/d) = d x^((d-1)/d^2)$
  $
  ||D f (x)(y)|| < 1 " iff " y eq.not
  $
  $
  ||(A x)^(d-1) dot.o A y|| < 1 " iff " y eq.not x
  $
  $x dot.o y >=$
  sdfsd sdf sdf sdf s
]
// thumbnail update test
asdf
asdjfalds
asdjfhlakjsdhflakjsdf
jahflakjshdflads
asdfjahldskjfhaksd
asdfjalkjds;fasdf
asdkfja;lskdfja;lsd
askdfj;akdjsf
