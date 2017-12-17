(TeX-add-style-hook
 "Chapter3"
 (lambda ()
   (TeX-run-style-hooks
    "ch3_characteristics"
    "ch3_example_matrix"
    "ch3_cophenetic"
    "ch3_shaded_cophenetic")
   (LaTeX-add-labels
    "fig:methods"
    "fig:sample_tree"
    "fig:example_boxplot"))
 :latex)

