[
  {
    "op": "core/column-removal",
    "description": "Remove column RespondentID",
    "columnName": "RespondentID"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column CollectorID",
    "columnName": "CollectorID"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column StartDate",
    "columnName": "StartDate"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column EndDate",
    "columnName": "EndDate"
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
    "description": "Remove column LastName",
    "columnName": "LastName"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Custom Data",
    "columnName": "Custom Data"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column I consent to taking this survey.",
    "columnName": "I consent to taking this survey."
  },
  {
    "op": "core/column-rename",
    "description": "Rename column When are you taking this survey? to When-Taking-Survey",
    "oldColumnName": "When are you taking this survey?",
    "newColumnName": "When-Taking-Survey"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Please select the workshop you are attending. Events are listed in chronological order.",
    "columnName": "Please select the workshop you are attending. Events are listed in chronological order."
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Column",
    "columnName": "Column"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Will this be your first time attending a Data Carpentry workshop (as a learner)? to First-Time",
    "oldColumnName": "Will this be your first time attending a Data Carpentry workshop (as a learner)?",
    "newColumnName": "First-Time"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Which of the following describes your current status? to Status",
    "oldColumnName": "Which of the following describes your current status?",
    "newColumnName": "Status"
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column2",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column2",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Research Assistant",
          "research assistant"
        ],
        "to": "Research Assistant"
      },
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Researcher",
          "Researcher "
        ],
        "to": "Researcher"
      },
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "research scientist",
          "Research Scientist"
        ],
        "to": "Research Scientist"
      },
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Librarian",
          "librarian"
        ],
        "to": "Librarian"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column2",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column2",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Research assisstant"
        ],
        "to": "Research Assisstant"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column2",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column2",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Research Assistant",
          "Research Assisstant"
        ],
        "to": "Research Assistant"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column2",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column2",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Government Research Scientist",
          "government researcher"
        ],
        "to": "Government Researcher"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column2",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column2",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "USDA employee"
        ],
        "to": "USDA"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column2",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column2",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "USDA Researcher"
        ],
        "to": "USDA"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column2",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column2",
    "expression": "value",
    "edits": [
      {
        "fromBlank": true,
        "fromError": false,
        "from": [],
        "to": ""
      }
    ]
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column2 to Status-Other",
    "oldColumnName": "Column2",
    "newColumnName": "Status-Other"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Are you age 18 or above?",
    "columnName": "Are you age 18 or above?"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Your department or division (e.g. Microbiology and Molecular Genetics, Environmental Engineering, Sociology, etc): to Department",
    "oldColumnName": "Your department or division (e.g. Microbiology and Molecular Genetics, Environmental Engineering, Sociology, etc):",
    "newColumnName": "Department"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Your research discipline to Discipline",
    "oldColumnName": "Your research discipline",
    "newColumnName": "Discipline"
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Social Science",
          "social science",
          "Social science",
          "Social science "
        ],
        "to": "Social Science"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Social Sciences",
          "Social sciences",
          "social sciences"
        ],
        "to": "Social Science"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Social Science (psychology)",
          "social science, psychology"
        ],
        "to": "Social Science"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Information science",
          "Information Science"
        ],
        "to": "Information Science"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Librarian",
          "librarian"
        ],
        "to": "Librarian"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Environmental Studies",
          "Environmental studies"
        ],
        "to": "Environmental Studies"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Data management",
          "data management"
        ],
        "to": "Data Management"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Environmental Sciences ",
          "Environmental sciences "
        ],
        "to": "Environmental Sciences "
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Nursing",
          "nursing"
        ],
        "to": "Nursing"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Built environment",
          "built environment"
        ],
        "to": "Built Environment"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Psychology",
          "psychology"
        ],
        "to": "Psychology"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Sociology",
          "sociology"
        ],
        "to": "Sociology"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Library and Information Studies",
          "library and information studies"
        ],
        "to": "Library and Info Science"
      },
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Library and Info Science",
          "Library and Info. Science"
        ],
        "to": "Library and Info Science"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Developmental Psychology",
          "developmental psychology"
        ],
        "to": "Developmental Psychology"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Environmental Science",
          "Environmental science"
        ],
        "to": "Environmental Science"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Computational Biology",
          "Computational Biology and Population Genetics"
        ],
        "to": "Computational Biology"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Library & Information Science",
          "Library & information sciences"
        ],
        "to": "Library and Info Science"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Interdisciplinary Ecology/ Fisheries and Aquatic Sciences",
          "Interdisciplinary biology and sociology"
        ],
        "to": "Interdisciplinary "
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Library and Info Science",
          "Library and Information Science"
        ],
        "to": "Library and Info Science"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Data Management",
          "data management librarian"
        ],
        "to": "Data Management"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Information Science",
          "Information use"
        ],
        "to": "Information Science"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Data Management",
          "data managment"
        ],
        "to": "Data Management"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column3",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column3",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Environmental Sciences "
        ],
        "to": "Environmental Science"
      }
    ]
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column3 to Discipline-Other",
    "oldColumnName": "Column3",
    "newColumnName": "Discipline-Other"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column In three sentences or less, please describe your current field of work or research question.",
    "columnName": "In three sentences or less, please describe your current field of work or research question."
  },
  {
    "op": "core/column-rename",
    "description": "Rename column What operating system is on the computer you are bringing to the workshop? to OS",
    "oldColumnName": "What operating system is on the computer you are bringing to the workshop?",
    "newColumnName": "OS"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Will you be attending the workshop with colleagues, friends, or classmates? to With-Friend",
    "oldColumnName": "Will you be attending the workshop with colleagues, friends, or classmates?",
    "newColumnName": "With-Friend"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column How often to you currently use programming languages (R, Python, etc.) or databases (Access, SQL, etc.)? to Programming-Usage",
    "oldColumnName": "How often to you currently use programming languages (R, Python, etc.) or databases (Access, SQL, etc.)?",
    "newColumnName": "Programming-Usage"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column What tools do you frequently use to manage and/or analyze data? Check all that apply. to Current-Tools",
    "oldColumnName": "What tools do you frequently use to manage and/or analyze data? Check all that apply.",
    "newColumnName": "Current-Tools"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Current-Tools",
    "columnName": "Current-Tools"
  },
  {
    "op": "core/column-addition",
    "description": "Create column Current-Tools at index 11 based on column Column4 using expression grel:cells['Column4'].value + ',' + cells['Column5'].value + ',' + cells['Column6'].value + ',' + cells['Column7'].value + ',' + cells['Column8'].value + ','  + cells['Column9'].value + ',' + cells['Column10'].value + ',' + cells['Column11'].value + ',' + cells['Column12'].value + ',' + cells['Column13'].value",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "newColumnName": "Current-Tools",
    "columnInsertIndex": 11,
    "baseColumnName": "Column4",
    "expression": "grel:cells['Column4'].value + ',' + cells['Column5'].value + ',' + cells['Column6'].value + ',' + cells['Column7'].value + ',' + cells['Column8'].value + ','  + cells['Column9'].value + ',' + cells['Column10'].value + ',' + cells['Column11'].value + ',' + cells['Column12'].value + ',' + cells['Column13'].value",
    "onError": "set-to-blank"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Current-Tools",
    "columnName": "Current-Tools"
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column4",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column4",
    "expression": "value",
    "edits": [
      {
        "fromBlank": true,
        "fromError": false,
        "from": [],
        "to": ""
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column4",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column4",
    "expression": "value",
    "edits": [
      {
        "fromBlank": true,
        "fromError": false,
        "from": [],
        "to": ""
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column6",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column6",
    "expression": "value",
    "edits": [
      {
        "fromBlank": true,
        "fromError": false,
        "from": [],
        "to": ""
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column5",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column5",
    "expression": "value",
    "edits": [
      {
        "fromBlank": true,
        "fromError": false,
        "from": [],
        "to": " "
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column4",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column4",
    "expression": "value",
    "edits": [
      {
        "fromBlank": true,
        "fromError": false,
        "from": [],
        "to": " "
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column6",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column6",
    "expression": "value",
    "edits": [
      {
        "fromBlank": true,
        "fromError": false,
        "from": [],
        "to": " "
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column7",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column7",
    "expression": "value",
    "edits": [
      {
        "fromBlank": true,
        "fromError": false,
        "from": [],
        "to": " "
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column8",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column8",
    "expression": "value",
    "edits": [
      {
        "fromBlank": true,
        "fromError": false,
        "from": [],
        "to": " "
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column9",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column9",
    "expression": "value",
    "edits": [
      {
        "fromBlank": true,
        "fromError": false,
        "from": [],
        "to": " "
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column10",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column10",
    "expression": "value",
    "edits": [
      {
        "fromBlank": true,
        "fromError": false,
        "from": [],
        "to": " "
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column11",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column11",
    "expression": "value",
    "edits": [
      {
        "fromBlank": true,
        "fromError": false,
        "from": [],
        "to": " "
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column12",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column12",
    "expression": "value",
    "edits": [
      {
        "fromBlank": true,
        "fromError": false,
        "from": [],
        "to": " "
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column13",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column13",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "GraphPad Prism",
          "Graphpad Prism",
          "GraphPad, Prism",
          "Graphpad prism",
          "graphpad prism",
          "graphpad prism "
        ],
        "to": "GraphPad Prism"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column13",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column13",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "FlowJo, Prism",
          "FlowJo. Prism",
          "Prism, Flow-Jo",
          "Prism, FlowJo",
          "Prism, Flowjo",
          "prism, flowjo"
        ],
        "to": "FlowJo, Prism"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column13",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column13",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Prism",
          "prism",
          "PRISM",
          "Prism "
        ],
        "to": "Prism"
      },
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "SPSS",
          "spss",
          "SPSS ",
          "Spss"
        ],
        "to": "SPSS"
      },
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Stata",
          "stata",
          "STATA"
        ],
        "to": "Stata"
      },
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "SAS, JMP",
          "SAS, JMP, ",
          "sas, jmp"
        ],
        "to": "SAS, JMP"
      },
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Perl",
          "perl",
          "PERL"
        ],
        "to": "Perl"
      },
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Tableau",
          "Tableau ",
          "tableau"
        ],
        "to": "Tableau"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column13",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column13",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Graphpad",
          "GraphPad"
        ],
        "to": "Graphpad"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column13",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column13",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "FAME",
          "fame"
        ],
        "to": "FAME"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column13",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column13",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "C++",
          "C"
        ],
        "to": "C++"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column13",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column13",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "SAS, SPSS",
          "spss sas"
        ],
        "to": "SAS, SPSS"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column13",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column13",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "SAS STATA",
          "Stata, SAS"
        ],
        "to": "SAS STATA"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column13",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column13",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "None",
          "none"
        ],
        "to": ""
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column13",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column13",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "STATA, HLM",
          "Stata; HLM"
        ],
        "to": "STATA, HLM"
      },
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "SPSS, Stata.",
          "Stata, SPSS"
        ],
        "to": "SPSS, Stata"
      },
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Graphpad Prism, SPSS",
          "SPSS, GraphPad Prism"
        ],
        "to": "Graphpad Prism, SPSS"
      },
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "ArcGIS",
          "arcGIS"
        ],
        "to": "ArcGIS"
      },
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "FAME, Stata",
          "Stata, FAME "
        ],
        "to": "FAME, Stata"
      },
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "postgresql",
          "PostgreSQL"
        ],
        "to": "postgresql"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column13",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column13",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "SAS (JMP Genomics)",
          "SAS/JMP Genomics"
        ],
        "to": "SAS (JMP Genomics)"
      },
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "SigmaPlot",
          "Sigma plot"
        ],
        "to": "SigmaPlot"
      },
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "GraphPad Prism",
          "Graph Pad Prism"
        ],
        "to": "GraphPad Prism"
      },
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Graphpad",
          "graph pad"
        ],
        "to": "Graphpad"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column13",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column13",
    "expression": "value",
    "edits": [
      {
        "fromBlank": true,
        "fromError": false,
        "from": [],
        "to": " "
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column13",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column13",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "SPSS",
          "SPASS"
        ],
        "to": "SPSS"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column13",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column13",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          " "
        ],
        "to": " "
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column4",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column4",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          " "
        ],
        "to": ""
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column4",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column4",
    "expression": "value",
    "edits": [
      {
        "fromBlank": true,
        "fromError": false,
        "from": [],
        "to": ""
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column5",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column5",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          " "
        ],
        "to": ""
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column6",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column6",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          " "
        ],
        "to": ""
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column7",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column7",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          " "
        ],
        "to": ""
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column8",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column8",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          " "
        ],
        "to": ""
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column9",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column9",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          " "
        ],
        "to": ""
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column10",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column10",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          " "
        ],
        "to": ""
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column11",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column11",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          " "
        ],
        "to": ""
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column11",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column11",
    "expression": "value",
    "edits": [
      {
        "fromBlank": true,
        "fromError": false,
        "from": [],
        "to": ""
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column13",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column13",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          " "
        ],
        "to": ""
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Column12",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Column12",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          " "
        ],
        "to": ""
      }
    ]
  },
  {
    "op": "core/column-addition",
    "description": "Create column Current-Tools at index 11 based on column Column4 using expression grel:cells['Column4'].value + ',' + cells['Column5'].value + ',' + cells['Column6'].value + ',' + cells['Column7'].value + ',' + cells['Column8'].value + ',' + cells['Column9'].value + ','cells['Column10'].value + ',' + cells['Column11'].value + ',' + cells['Column12'].value + ',' + cells['Column13'].value",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "newColumnName": "Current-Tools",
    "columnInsertIndex": 11,
    "baseColumnName": "Column4",
    "expression": "grel:cells['Column4'].value + ',' + cells['Column5'].value + ',' + cells['Column6'].value + ',' + cells['Column7'].value + ',' + cells['Column8'].value + ',' + cells['Column9'].value + ','cells['Column10'].value + ',' + cells['Column11'].value + ',' + cells['Column12'].value + ',' + cells['Column13'].value",
    "onError": "set-to-blank"
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          ",,,,,,"
        ],
        "to": ""
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          ",,,,,MATLAB,"
        ],
        "to": "MATLAB"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          ",,,,Python,,"
        ],
        "to": "Python"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          ",,,,Python,MATLAB,"
        ],
        "to": "Python,MATLAB"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          ",,,R,,,"
        ],
        "to": "R"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          ",,,R,,MATLAB,"
        ],
        "to": "R,MATLAB"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          ",,,R,Python,,"
        ],
        "to": "R,Python"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,SQL,R,Python,,"
        ],
        "to": "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,SQL,R,Python"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,SQL,R,,,"
        ],
        "to": "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,SQL,R"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,SQL,,Python,,"
        ],
        "to": "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,SQL,Python"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,SQL,,,,"
        ],
        "to": "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,SQL"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,,R,Python,,"
        ],
        "to": "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,,R,Python"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,,R,,,"
        ],
        "to": "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,R"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,,,Python,MATLAB,"
        ],
        "to": "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,Python,MATLAB"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,,,Python,,"
        ],
        "to": "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,Python"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,,,,MATLAB,"
        ],
        "to": "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,MATLAB"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,,,,,"
        ],
        "to": "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,,SQL,R,Python,MATLAB,"
        ],
        "to": "Excel or other spreadsheet program,SQL,R,Python,MATLAB,"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,,SQL,R,Python,,"
        ],
        "to": "Excel or other spreadsheet program,SQL,R,Python"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,,SQL,R,,MATLAB,"
        ],
        "to": "Excel or other spreadsheet program,SQL,R,MATLAB"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,,SQL,R,,,"
        ],
        "to": "Excel or other spreadsheet program,SQL,R"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,,SQL,,Python,,"
        ],
        "to": "Excel or other spreadsheet program,SQL,Python"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,,SQL,,Python,MATLAB,"
        ],
        "to": "Excel or other spreadsheet program,SQL,Python,MATLAB"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,,R,Python,MATLAB,"
        ],
        "to": "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,R,Python,MATLAB"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,,R,Python"
        ],
        "to": "Excel or other spreadsheet program,FileMaker Pro or Microsoft Access,R,Python"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,,SQL,,,MATLAB,"
        ],
        "to": "Excel or other spreadsheet program,SQL,MATLAB,"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,,SQL,,,,"
        ],
        "to": "Excel or other spreadsheet program,SQL"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,,,R,Python,MATLAB,"
        ],
        "to": "Excel or other spreadsheet program,R,Python,MATLAB"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,,,R,Python,,"
        ],
        "to": "Excel or other spreadsheet program,R,Python"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,,,R,,MATLAB,"
        ],
        "to": "Excel or other spreadsheet program,R,MATLAB"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,,,R,,,"
        ],
        "to": "Excel or other spreadsheet program,R"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,,,,Python,MATLAB,"
        ],
        "to": "Excel or other spreadsheet program,Python,MATLAB"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          ",,,R,Python,MATLAB,"
        ],
        "to": "R,Python,MATLAB"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          ",,SQL,,,,"
        ],
        "to": "SQL"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          ",,SQL,,Python,,"
        ],
        "to": "SQL,Python"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          ",,SQL,R,,,"
        ],
        "to": "SQL,R"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          ",,SQL,R,Python,,"
        ],
        "to": "SQL,R,Python"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          ",,SQL,R,Python,MATLAB,"
        ],
        "to": "SQL,R,Python,MATLAB"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          ",FileMaker Pro or Microsoft Access,,,,,"
        ],
        "to": "FileMaker Pro or Microsoft Access"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          ",FileMaker Pro or Microsoft Access,SQL,,Python,,"
        ],
        "to": "FileMaker Pro or Microsoft Access,SQL,Python"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,,,,,,"
        ],
        "to": "Excel or other spreadsheet program"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,,,,,MATLAB,"
        ],
        "to": "Excel or other spreadsheet program,MATLAB"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "Excel or other spreadsheet program,,,,Python,,"
        ],
        "to": "Excel or other spreadsheet program,Python"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column Current-Tools",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "Current-Tools",
    "expression": "value",
    "edits": [
      {
        "fromBlank": true,
        "fromError": false,
        "from": [],
        "to": ""
      }
    ]
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Column5",
    "columnName": "Column5"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Column6",
    "columnName": "Column6"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Column7",
    "columnName": "Column7"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Column8",
    "columnName": "Column8"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Column9",
    "columnName": "Column9"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Column10",
    "columnName": "Column10"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Column11",
    "columnName": "Column11"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Column12",
    "columnName": "Column12"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Column13",
    "columnName": "Column13"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Do you currently have a dataset that you would like to analyze? to Have-Dataset",
    "oldColumnName": "Do you currently have a dataset that you would like to analyze?",
    "newColumnName": "Have-Dataset"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Please enter your level of satisfaction with your current: to Data-Management-Strategy",
    "oldColumnName": "Please enter your level of satisfaction with your current:",
    "newColumnName": "Data-Management-Strategy"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column14 to Data-Analysis-Workflow",
    "oldColumnName": "Column14",
    "newColumnName": "Data-Analysis-Workflow"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Please rate your level of agreement with the following statements: to Data-Organization",
    "oldColumnName": "Please rate your level of agreement with the following statements:",
    "newColumnName": "Data-Organization"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column15 to Using-Scripting-Language",
    "oldColumnName": "Column15",
    "newColumnName": "Using-Scripting-Language"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column16 to Using-R-or-Python",
    "oldColumnName": "Column16",
    "newColumnName": "Using-R-or-Python"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column17 to Value-of-SQL-or-Python",
    "oldColumnName": "Column17",
    "newColumnName": "Value-of-SQL-or-Python"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Please share what you most hope to learn from attending this workshop. to Hope-to-Learn",
    "oldColumnName": "Please share what you most hope to learn from attending this workshop.",
    "newColumnName": "Hope-to-Learn"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Your age",
    "columnName": "Your age"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Your gender",
    "columnName": "Your gender"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Column18",
    "columnName": "Column18"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Does this workshop take place in the United States? to Workshop-in-US",
    "oldColumnName": "Does this workshop take place in the United States?",
    "newColumnName": "Workshop-in-US"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Column19",
    "columnName": "Column19"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Race/Ethnicity",
    "columnName": "Race/Ethnicity"
  },
  {
    "op": "core/row-star",
    "description": "Star rows",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "starred": true
  },
  {
    "op": "core/row-star",
    "description": "Unstar rows",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "starred": false
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
