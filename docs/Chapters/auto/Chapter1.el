(TeX-add-style-hook
 "Chapter1"
 (lambda ()
   (TeX-add-symbols
    '("option" 1)
    '("file" 1)
    '("code" 1)
    '("tabhead" 1)
    '("keyword" 1))
   (LaTeX-add-labels
    "FillingFile"
    "ThesisConventions"
    "tab:treatments"
    "fig:Electron"
    "eqn:Einstein"))
 :latex)

