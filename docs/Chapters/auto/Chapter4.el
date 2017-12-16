(TeX-add-style-hook
 "Chapter4"
 (lambda ()
   (TeX-run-style-hooks
    "ch4_rawdata"
    "ch4_cleanup"
    "ch4_rq1_corr"
    "ch4_rq1_sd"
    "ch4_rq1_anova"
    "ch4_rq2_corr"
    "ch4_rq2_sd"
    "ch4_rq2_anova")
   (LaTeX-add-labels
    "fig:rq1_distributions"
    "fig:rq1_all"
    "fig:rq2_distributions"
    "fig:rq1"
    "fig:example_tree1"))
 :latex)

