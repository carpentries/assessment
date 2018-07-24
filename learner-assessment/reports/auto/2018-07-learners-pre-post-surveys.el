(TeX-add-style-hook
 "2018-07-learners-pre-post-surveys"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T1") ("inputenc" "utf8") ("geometry" "margin=1in")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "lmodern"
    "amssymb"
    "amsmath"
    "ifxetex"
    "ifluatex"
    "fixltx2e"
    "fontenc"
    "inputenc"
    "mathspec"
    "fontspec"
    "upquote"
    "microtype"
    "geometry"
    "hyperref"
    "longtable"
    "booktabs"
    "graphicx"
    "grffile"
    "parskip"
    "titling")
   (TeX-add-symbols
    '("subtitle" 1)
    "tightlist"
    "maxwidth"
    "maxheight"
    "oldparagraph"
    "oldsubparagraph"
    "rmarkdownfootnote"
    "footnote")
   (LaTeX-add-labels
    "overview"
    "motivation-for-attending-carpentries-workshops"
    "why-are-learners-participating-in-our-workshops"
    "what-is-the-current-level-of-satisfaction-of-the-data-management-practices-of-our-learners-before-attending-our-workshops"
    "how-often-do-our-workshop-participants-program-before-attending-our-workshops"
    "workshop-type"
    "perception-of-workshop-environment-and-experience"
    "comfort-of-the-environment"
    "interaction-with-instructors-and-helpers"
    "applicability-of-the-skills-learned"
    "was-the-information-covered-in-the-workshops-new"
    "workshop-experience"
    "net-promoter-score"
    "effect-of-workshops-on-learners-self-reported-perspectives-skills-confidence"
    "respondent-ability-to-perform-computing-tasks"
    "demographics"
    "countries"
    "learners-discipline"
    "learners-career-stage"
    "learners-operating-system"
    "gender-and-racialethnic-identity"
    "summary"))
 :latex)

