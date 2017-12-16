(TeX-add-style-hook
 "Chapter3"
 (lambda ()
   (TeX-run-style-hooks
    "ch3_characteristics")
   (LaTeX-add-labels
    "fig:methods"
    "fig:sample_tree"
    "fig:example_boxplot"))
 :latex)

