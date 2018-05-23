[
  {
    "op": "core/column-removal",
    "description": "Remove column Respondent ID",
    "columnName": "Respondent ID"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Collector ID",
    "columnName": "Collector ID"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Start Date",
    "columnName": "Start Date"
  },
  {
    "op": "core/text-transform",
    "description": "Text transform on cells in column End Date using expression value.toDate()",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "End Date",
    "expression": "value.toDate()",
    "onError": "keep-original",
    "repeat": false,
    "repeatCount": 10
  },
  {
    "op": "core/text-transform",
    "description": "Text transform on cells in column End Date using expression value.toString()",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "End Date",
    "expression": "value.toString()",
    "onError": "keep-original",
    "repeat": false,
    "repeatCount": 10
  },
  {
    "op": "core/column-rename",
    "description": "Rename column End Date to Date",
    "oldColumnName": "End Date",
    "newColumnName": "Date"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column IP Address",
    "columnName": "IP Address"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Email Address",
    "columnName": "Email Address"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column First Name",
    "columnName": "First Name"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Last Name",
    "columnName": "Last Name"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Custom Data 1",
    "columnName": "Custom Data 1"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column I consent to taking this survey.",
    "columnName": "I consent to taking this survey."
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Are you 18 years of age or above? to Over18",
    "oldColumnName": "Are you 18 years of age or above?",
    "newColumnName": "Over18"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Is this your first time completing this survey? to FirstSurvey",
    "oldColumnName": "Is this your first time completing this survey?",
    "newColumnName": "FirstSurvey"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column What is your current status? to Status",
    "oldColumnName": "What is your current status?",
    "newColumnName": "Status"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column to StatusOther",
    "oldColumnName": "Column",
    "newColumnName": "StatusOther"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column What is your field of research, work, or study? Check all that apply. to Field",
    "oldColumnName": "What is your field of research, work, or study? Check all that apply.",
    "newColumnName": "Field"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column13 to FieldOther",
    "oldColumnName": "Column13",
    "newColumnName": "FieldOther"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column How many Carpentries (Software, Data, Library) workshops have you completed as a learner? to NumWorkshops",
    "oldColumnName": "How many Carpentries (Software, Data, Library) workshops have you completed as a learner?",
    "newColumnName": "NumWorkshops"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column How long ago did you last complete a Carpentries workshop? to TimeSinceWorkshop",
    "oldColumnName": "How long ago did you last complete a Carpentries workshop?",
    "newColumnName": "TimeSinceWorkshop"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Which Carpentries workshop did you last attend? to WhichCarpentry",
    "oldColumnName": "Which Carpentries workshop did you last attend?",
    "newColumnName": "WhichCarpentry"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column What content was covered at the last Carpentries workshop you completed? Select all that apply. to ContentCovered",
    "oldColumnName": "What content was covered at the last Carpentries workshop you completed? Select all that apply.",
    "newColumnName": "ContentCovered"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column24 to ContentCoveredOther",
    "oldColumnName": "Column24",
    "newColumnName": "ContentCoveredOther"
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column ContentCoveredOther",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "ContentCoveredOther",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "MAKE",
          "Make",
          "Make ",
          "make"
        ],
        "to": "Make"
      },
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "regular expressions",
          "Regular expressions"
        ],
        "to": "Regular Expressions"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column ContentCoveredOther",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "ContentCoveredOther",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "using shell in mac"
        ],
        "to": "Shell"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column ContentCoveredOther",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "ContentCoveredOther",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "bash"
        ],
        "to": "Shell"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column ContentCoveredOther",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "ContentCoveredOther",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "command line shell"
        ],
        "to": "Shell"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column ContentCoveredOther",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "ContentCoveredOther",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Regex, more"
        ],
        "to": "Regular Expressions"
      }
    ]
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Which of the following behaviors have you adopted as a result of completing a Carpentries workshop? Check all that apply. to Behaviors",
    "oldColumnName": "Which of the following behaviors have you adopted as a result of completing a Carpentries workshop? Check all that apply.",
    "newColumnName": "Behaviors"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column33 to BehaviorsOther",
    "oldColumnName": "Column33",
    "newColumnName": "BehaviorsOther"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Before completing a Carpentries workshop, how often did you use programming languages (R, Python, etc.), databases (Access, SQL, etc.), version control software and/or the shell? to ProgrammingBefore",
    "oldColumnName": "Before completing a Carpentries workshop, how often did you use programming languages (R, Python, etc.), databases (Access, SQL, etc.), version control software and/or the shell?",
    "newColumnName": "ProgrammingBefore"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Since completing a Carpentries workshop, how often do you currently use programming languages (R, Python, etc.), databases (Access, SQL, etc.), version control software and/or the shell? to ProgrammingSince",
    "oldColumnName": "Since completing a Carpentries workshop, how often do you currently use programming languages (R, Python, etc.), databases (Access, SQL, etc.), version control software and/or the shell?",
    "newColumnName": "ProgrammingSince"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column How would you rate your change in confidence in the tools that were covered during your Carpentries workshop(s) compared to before the workshop? to ChangeInConfidence",
    "oldColumnName": "How would you rate your change in confidence in the tools that were covered during your Carpentries workshop(s) compared to before the workshop?",
    "newColumnName": "ChangeInConfidence"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column If you are using the tools you learned in a Carpentries workshop, how are they helping you? Check all that apply. to HowToolsHelped",
    "oldColumnName": "If you are using the tools you learned in a Carpentries workshop, how are they helping you? Check all that apply.",
    "newColumnName": "HowToolsHelped"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column38 to HowToolsHelpedOther",
    "oldColumnName": "Column38",
    "newColumnName": "HowToolsHelpedOther"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Has completing a Carpentries workshop contributed to your writing of a research article, thesis, dissertation, or grant proposal? to Writing",
    "oldColumnName": "Has completing a Carpentries workshop contributed to your writing of a research article, thesis, dissertation, or grant proposal?",
    "newColumnName": "Writing"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column If you answered yes to question 15, please tells us how completing a Carpentries workshop contributed to your research writing. to WritingResponse",
    "oldColumnName": "If you answered yes to question 15, please tells us how completing a Carpentries workshop contributed to your research writing.",
    "newColumnName": "WritingResponse"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column What topics could we offer that would motivate you to take another Carpentries workshop? Please describe below. to OtherTopics",
    "oldColumnName": "What topics could we offer that would motivate you to take another Carpentries workshop? Please describe below.",
    "newColumnName": "OtherTopics"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column The statements below reflect ways in which completing a Carpentries workshop may have impacted you. Please indicate your level of agreement with these statements. to AdvanceCareer",
    "oldColumnName": "The statements below reflect ways in which completing a Carpentries workshop may have impacted you. Please indicate your level of agreement with these statements.",
    "newColumnName": "AdvanceCareer"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column39 to MotivatedSeekKnowledge",
    "oldColumnName": "Column39",
    "newColumnName": "MotivatedSeekKnowledge"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column40 to AnalysesReproducible",
    "oldColumnName": "Column40",
    "newColumnName": "AnalysesReproducible"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column41 to ProfessionalRecognition",
    "oldColumnName": "Column41",
    "newColumnName": "ProfessionalRecognition"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column42 to ImprovedCodingPractices",
    "oldColumnName": "Column42",
    "newColumnName": "ImprovedCodingPractices"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column43 to ImprovedResearchProductivity",
    "oldColumnName": "Column43",
    "newColumnName": "ImprovedResearchProductivity"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column44 to GainedConfidence",
    "oldColumnName": "Column44",
    "newColumnName": "GainedConfidence"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Please tell us the most important way you were impacted as a result of completing a Carpentries workshop. to ImpactResponse",
    "oldColumnName": "Please tell us the most important way you were impacted as a result of completing a Carpentries workshop.",
    "newColumnName": "ImpactResponse"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column In what country was the workshop you attended held? to Country",
    "oldColumnName": "In what country was the workshop you attended held?",
    "newColumnName": "Country"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column What is your gender? to Gender",
    "oldColumnName": "What is your gender?",
    "newColumnName": "Gender"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column How would you describe yourself? Check all that apply. to Race",
    "oldColumnName": "How would you describe yourself? Check all that apply.",
    "newColumnName": "Race"
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Race",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Race",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "American Indian or Alaska Native(A person having origins in any of the original peoples of North and South America (including Central America), and who maintains a tribal affiliation or community attachment.)"
        ],
        "to": "American Indian or Alaska Native"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column45",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column45",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Asian(A person having origins in any of the original peoples of the Far East, Southeast Asia, or the Indian subcontinent including, for example, Cambodia, China, India, Japan, Korea, Malaysia, Pakistan, the Philippine Islands, Thailand, and Vietnam.)"
        ],
        "to": "Asian"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column46",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column46",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Black or African American(A person having origins in any of the Black racial groups of Africa – includes Caribbean Islanders and other of African origin.)"
        ],
        "to": "Black or African American"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column47",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column47",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Hispanic or Latino(a)(A person of Spanish-speaking origin or ancestry and/or Latin American origin or ancestry – includes Portuguese and Brazilians.)"
        ],
        "to": "Hispanic or Latino(a)"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column48",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column48",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Native Hawaiian or Other Pacific Islander(A person having origins in any of the original peoples of Hawaii, Guam, Samoa, or other Pacific Islands.)"
        ],
        "to": "Native Hawaiian or Other Pacific Islander"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column49",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column49",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "White(A person having origins in any of the original peoples of Europe, the Middle East, or North Africa.)"
        ],
        "to": "White"
      }
    ]
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Please indicate your involvement in the Carpentry community since completing a Carpentry workshop. Check all that apply. to Involvement",
    "oldColumnName": "Please indicate your involvement in the Carpentry community since completing a Carpentry workshop. Check all that apply.",
    "newColumnName": "Involvement"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column64 to InvolvementOther",
    "oldColumnName": "Column64",
    "newColumnName": "InvolvementOther"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Have you recommended a Carpentry workshop to a friend or colleague? to HaveRecommended",
    "oldColumnName": "Have you recommended a Carpentry workshop to a friend or colleague?",
    "newColumnName": "HaveRecommended"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column HaveRecommended to Recommended",
    "oldColumnName": "HaveRecommended",
    "newColumnName": "Recommended"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column How likely are you to recommend a Carpentry workshop to a friend or colleague? to LikelyToRecommend",
    "oldColumnName": "How likely are you to recommend a Carpentry workshop to a friend or colleague?",
    "newColumnName": "LikelyToRecommend"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Optional: Please tell us two outcomes you accomplished as a result of completing a Carpentry workshop. to OutcomesResponses",
    "oldColumnName": "Optional: Please tell us two outcomes you accomplished as a result of completing a Carpentry workshop.",
    "newColumnName": "OutcomesResponses"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Optional: If you are not applying the skills you learned at a Carpentry workshop in your work, please tell us why. to NotApplyingSkillsResponses",
    "oldColumnName": "Optional: If you are not applying the skills you learned at a Carpentry workshop in your work, please tell us why.",
    "newColumnName": "NotApplyingSkillsResponses"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Optional: If you would like to make additional comments about your Carpentry workshop experience, or ways you've used the tools you learned in a Carpentry workshop, please comment below. to AdditionalComments",
    "oldColumnName": "Optional: If you would like to make additional comments about your Carpentry workshop experience, or ways you've used the tools you learned in a Carpentry workshop, please comment below.",
    "newColumnName": "AdditionalComments"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column AdditionalComments to AdditionalCommentsResponse",
    "oldColumnName": "AdditionalComments",
    "newColumnName": "AdditionalCommentsResponse"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column We are looking for participants to take part in a short interview about how the Carpentry workshop impacted their work/career. Please indicate if you would like to participate in this opportunity.",
    "columnName": "We are looking for participants to take part in a short interview about how the Carpentry workshop impacted their work/career. Please indicate if you would like to participate in this opportunity."
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Column65",
    "columnName": "Column65"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Please give us your e-mail address to be contacted to participate in a short interview. Your e-mail address will not be linked to your survey results.",
    "columnName": "Please give us your e-mail address to be contacted to participate in a short interview. Your e-mail address will not be linked to your survey results."
  },
  {
    "op": "core/row-removal",
    "description": "Remove rows",
    "engineConfig": {
      "mode": "row-based",
      "facets": [
        {
          "omitError": false,
          "expression": "row.starred",
          "selectBlank": false,
          "selection": [
            {
              "v": {
                "v": true,
                "l": "true"
              }
            }
          ],
          "selectError": false,
          "invert": false,
          "name": "Starred Rows",
          "omitBlank": false,
          "type": "list",
          "columnName": ""
        }
      ]
    }
  }
]
