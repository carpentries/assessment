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
    "description": "Remove column I consent to this survey",
    "columnName": "I consent to this survey"
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
    "description": "Rename column Will this be your first time attending a Software Carpentry Workshop (as a learner)? to First-Time",
    "oldColumnName": "Will this be your first time attending a Software Carpentry Workshop (as a learner)?",
    "newColumnName": "First-Time"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column How long ago did you attend a Software Carpentry workshop? to How-Long-Ago",
    "oldColumnName": "How long ago did you attend a Software Carpentry workshop?",
    "newColumnName": "How-Long-Ago"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column2 to Why-Attend-Another",
    "oldColumnName": "Column2",
    "newColumnName": "Why-Attend-Another"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Why-Attend-Another to How-Long-Ago-Other",
    "oldColumnName": "Why-Attend-Another",
    "newColumnName": "How-Long-Ago-Other"
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column How-Long-Ago-Other",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "How-Long-Ago-Other",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "1 year ago",
          "a year ago"
        ],
        "to": "1 year ago"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column How-Long-Ago-Other",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "How-Long-Ago-Other",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "2 years ago",
          "2-3(?) years ago"
        ],
        "to": "2 years ago"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column How-Long-Ago-Other",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "How-Long-Ago-Other",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "two years ago"
        ],
        "to": "2 years ago"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column How-Long-Ago-Other",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "How-Long-Ago-Other",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "last year"
        ],
        "to": "1 year ago"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column How-Long-Ago-Other",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "How-Long-Ago-Other",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "test"
        ],
        "to": ""
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column How-Long-Ago-Other",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "How-Long-Ago-Other",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "this is a test"
        ],
        "to": ""
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column How-Long-Ago-Other",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "How-Long-Ago-Other",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "1 year"
        ],
        "to": "1 year ago"
      }
    ]
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Why did you attend another workshop? (Select all that apply) to \tWhy-Attend-Another",
    "oldColumnName": "Why did you attend another workshop? (Select all that apply)",
    "newColumnName": "\tWhy-Attend-Another"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column \tWhy-Attend-Another to Why-Attend-Another",
    "oldColumnName": "\tWhy-Attend-Another",
    "newColumnName": "Why-Attend-Another"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column3 to \tWhy-Attend-Another",
    "oldColumnName": "Column3",
    "newColumnName": "\tWhy-Attend-Another"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column4 to Why-Attending",
    "oldColumnName": "Column4",
    "newColumnName": "Why-Attending"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column5 to Improve-Tools",
    "oldColumnName": "Column5",
    "newColumnName": "Improve-Tools"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Improve-Tools to Why-Attending-Other",
    "oldColumnName": "Improve-Tools",
    "newColumnName": "Why-Attending-Other"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Why-Attend-Another to Why-Attend-1",
    "oldColumnName": "Why-Attend-Another",
    "newColumnName": "Why-Attend-1"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column \tWhy-Attend-Another to Why-Attend-2",
    "oldColumnName": "\tWhy-Attend-Another",
    "newColumnName": "Why-Attend-2"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Why-Attending to Why-Attend-3",
    "oldColumnName": "Why-Attending",
    "newColumnName": "Why-Attend-3"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Why-Attending-Other to Why-Attend-4",
    "oldColumnName": "Why-Attending-Other",
    "newColumnName": "Why-Attend-4"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column6 to Why-Attend-5",
    "oldColumnName": "Column6",
    "newColumnName": "Why-Attend-5"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column7 to Why-Attend-Other",
    "oldColumnName": "Column7",
    "newColumnName": "Why-Attend-Other"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column In a few words, what is your most important reason for attending this workshop? to Why-Attending",
    "oldColumnName": "In a few words, what is your most important reason for attending this workshop?",
    "newColumnName": "Why-Attending"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Below are some reasons we think people come to Software Carpentry workshops. Some of these reasons may overlap with the reasons you suggested above. How important were these reasons to you? to Improve-Tools",
    "oldColumnName": "Below are some reasons we think people come to Software Carpentry workshops. Some of these reasons may overlap with the reasons you suggested above. How important were these reasons to you?",
    "newColumnName": "Improve-Tools"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column8 to Automate",
    "oldColumnName": "Column8",
    "newColumnName": "Automate"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column9 to Improve-Reproducibility",
    "oldColumnName": "Column9",
    "newColumnName": "Improve-Reproducibility"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column10 to Network",
    "oldColumnName": "Column10",
    "newColumnName": "Network"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column11 to Refresh-Skills",
    "oldColumnName": "Column11",
    "newColumnName": "Refresh-Skills"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Besides the course content, what importance did the following factors have on your choice to attend the workshop? to Live-Workshop",
    "oldColumnName": "Besides the course content, what importance did the following factors have on your choice to attend the workshop?",
    "newColumnName": "Live-Workshop"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column12 to Location",
    "oldColumnName": "Column12",
    "newColumnName": "Location"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column13 to Learn-With-Friends",
    "oldColumnName": "Column13",
    "newColumnName": "Learn-With-Friends"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column14 to Other",
    "oldColumnName": "Column14",
    "newColumnName": "Other"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column How soon do you anticipate using the skills you learn at the workshop? to Use-Skills",
    "oldColumnName": "How soon do you anticipate using the skills you learn at the workshop?",
    "newColumnName": "Use-Skills"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column How did you hear about Software Carpentry? (Select all that apply)",
    "columnName": "How did you hear about Software Carpentry? (Select all that apply)"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column15 to How-Did-You-Hear-1",
    "oldColumnName": "Column15",
    "newColumnName": "How-Did-You-Hear-1"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column16 to How-Did-You-Hear-2",
    "oldColumnName": "Column16",
    "newColumnName": "How-Did-You-Hear-2"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column17 to How-Did-You-Hear-3",
    "oldColumnName": "Column17",
    "newColumnName": "How-Did-You-Hear-3"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column18 to How-Did-You-Hear-4",
    "oldColumnName": "Column18",
    "newColumnName": "How-Did-You-Hear-4"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column19 to How-Did-You-Hear-5",
    "oldColumnName": "Column19",
    "newColumnName": "How-Did-You-Hear-5"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column20 to How-Did-You-Hear-6",
    "oldColumnName": "Column20",
    "newColumnName": "How-Did-You-Hear-6"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column If you experienced any strong concerns about attending this workshop, can you let us know what they were? Did we address these concerns, or were there ways we could have addressed them? to Strong-Concerns",
    "oldColumnName": "If you experienced any strong concerns about attending this workshop, can you let us know what they were? Did we address these concerns, or were there ways we could have addressed them?",
    "newColumnName": "Strong-Concerns"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column21 to How-Did-You-Hear-Other",
    "oldColumnName": "Column21",
    "newColumnName": "How-Did-You-Hear-Other"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column <em><span style=\"text-decoration: underline;\"></span></em><span style=\"text-decoration: underline;\"></span>Tell us about your experience with the following topics: to Unix-Shell-Current-Knowledge",
    "oldColumnName": "<em><span style=\"text-decoration: underline;\"></span></em><span style=\"text-decoration: underline;\"></span>Tell us about your experience with the following topics:",
    "newColumnName": "Unix-Shell-Current-Knowledge"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column22 to Unix-Shell-Current-Perception",
    "oldColumnName": "Column22",
    "newColumnName": "Unix-Shell-Current-Perception"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column23 to Git-Current-Knowledge",
    "oldColumnName": "Column23",
    "newColumnName": "Git-Current-Knowledge"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column24 to Git-Current-Perception",
    "oldColumnName": "Column24",
    "newColumnName": "Git-Current-Perception"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column25 to Python-Current-Knowledge",
    "oldColumnName": "Column25",
    "newColumnName": "Python-Current-Knowledge"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column26 to Python-Current-Perception",
    "oldColumnName": "Column26",
    "newColumnName": "Python-Current-Perception"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column27 to R-Current-Knowledge",
    "oldColumnName": "Column27",
    "newColumnName": "R-Current-Knowledge"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column28 to R-Current-Perception",
    "oldColumnName": "Column28",
    "newColumnName": "R-Current-Perception"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column29 to SQL-Current-Knowledge",
    "oldColumnName": "Column29",
    "newColumnName": "SQL-Current-Knowledge"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column30 to SQL-Current-Perception",
    "oldColumnName": "Column30",
    "newColumnName": "SQL-Current-Perception"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Tell us about how relevant you think these topics are to your research: to Unix-Shell-Relevent",
    "oldColumnName": "Tell us about how relevant you think these topics are to your research:",
    "newColumnName": "Unix-Shell-Relevent"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column31 to Git-Relevent",
    "oldColumnName": "Column31",
    "newColumnName": "Git-Relevent"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column32 to Python-Relevent",
    "oldColumnName": "Column32",
    "newColumnName": "Python-Relevent"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column33 to R-Relevent",
    "oldColumnName": "Column33",
    "newColumnName": "R-Relevent"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column34 to SQL-Relevent",
    "oldColumnName": "Column34",
    "newColumnName": "SQL-Relevent"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column How would you rate your motivation to learn about these topics? to Unix-Shell-Motivation",
    "oldColumnName": "How would you rate your motivation to learn about these topics?",
    "newColumnName": "Unix-Shell-Motivation"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column35 to Git-Motivation",
    "oldColumnName": "Column35",
    "newColumnName": "Git-Motivation"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column36 to Python-Motivation",
    "oldColumnName": "Column36",
    "newColumnName": "Python-Motivation"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column37 to R-Motivation",
    "oldColumnName": "Column37",
    "newColumnName": "R-Motivation"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column38 to SQL-Motivation",
    "oldColumnName": "Column38",
    "newColumnName": "SQL-Motivation"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column How would you describe your ability to do the following tasks? to Pipes",
    "oldColumnName": "How would you describe your ability to do the following tasks?",
    "newColumnName": "Pipes"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column39 to Loops",
    "oldColumnName": "Column39",
    "newColumnName": "Loops"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column40 to Git-Repo-Before-Workshop",
    "oldColumnName": "Column40",
    "newColumnName": "Git-Repo-Before-Workshop"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column41 to Function-Before-Workshop",
    "oldColumnName": "Column41",
    "newColumnName": "Function-Before-Workshop"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column42 to Import-Library-Before-Workshop",
    "oldColumnName": "Column42",
    "newColumnName": "Import-Library-Before-Workshop"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column43 to Unit-Test-Before-Workshop",
    "oldColumnName": "Column43",
    "newColumnName": "Unit-Test-Before-Workshop"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column44 to SQL-Query-Before-Workshop",
    "oldColumnName": "Column44",
    "newColumnName": "SQL-Query-Before-Workshop"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column What is your current position? to Status",
    "oldColumnName": "What is your current position?",
    "newColumnName": "Status"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column45 to Status-Other",
    "oldColumnName": "Column45",
    "newColumnName": "Status-Other"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column What is your domain of research/study? to Research-Domain",
    "oldColumnName": "What is your domain of research/study?",
    "newColumnName": "Research-Domain"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Research-Domain to Research-Domain-1",
    "oldColumnName": "Research-Domain",
    "newColumnName": "Research-Domain-1"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column46 to Research-Domain-2",
    "oldColumnName": "Column46",
    "newColumnName": "Research-Domain-2"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column47 to Research-Domain-3",
    "oldColumnName": "Column47",
    "newColumnName": "Research-Domain-3"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column48 to Research-Domain-4",
    "oldColumnName": "Column48",
    "newColumnName": "Research-Domain-4"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column49 to Research-Domain-5",
    "oldColumnName": "Column49",
    "newColumnName": "Research-Domain-5"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column50 to Research-Domain-6",
    "oldColumnName": "Column50",
    "newColumnName": "Research-Domain-6"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column51 to Research-Domain-7",
    "oldColumnName": "Column51",
    "newColumnName": "Research-Domain-7"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column52 to Research-Domain-8",
    "oldColumnName": "Column52",
    "newColumnName": "Research-Domain-8"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column53 to Research-Domain-9",
    "oldColumnName": "Column53",
    "newColumnName": "Research-Domain-9"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column54 to Research-Domain-10",
    "oldColumnName": "Column54",
    "newColumnName": "Research-Domain-10"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column55 to Research-Domain-11",
    "oldColumnName": "Column55",
    "newColumnName": "Research-Domain-11"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column56 to Research-Domain-12",
    "oldColumnName": "Column56",
    "newColumnName": "Research-Domain-12"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column57 to Research-Domain-13",
    "oldColumnName": "Column57",
    "newColumnName": "Research-Domain-13"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column58 to Research-Domain-14",
    "oldColumnName": "Column58",
    "newColumnName": "Research-Domain-14"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column59 to Research-Domain-15",
    "oldColumnName": "Column59",
    "newColumnName": "Research-Domain-15"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column60 to Research-Domain-16",
    "oldColumnName": "Column60",
    "newColumnName": "Research-Domain-16"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Column61 to Research-Domain-Other",
    "oldColumnName": "Column61",
    "newColumnName": "Research-Domain-Other"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column What is your gender? to Gender",
    "oldColumnName": "What is your gender?",
    "newColumnName": "Gender"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Are you age 18 or above?",
    "columnName": "Are you age 18 or above?"
  },
  {
    "op": "core/column-rename",
    "description": "Rename column Is the workshop being held in the United States? to Workshop-in-US",
    "oldColumnName": "Is the workshop being held in the United States?",
    "newColumnName": "Workshop-in-US"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Which race/ethnicity best describes you? (Please choose only one.)",
    "columnName": "Which race/ethnicity best describes you? (Please choose only one.)"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Column62",
    "columnName": "Column62"
  },
  {
    "op": "core/column-removal",
    "description": "Remove column Workshop ID",
    "columnName": "Workshop ID"
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
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column How-Long-Ago-Other",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "How-Long-Ago-Other",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "3 years?"
        ],
        "to": "3 years ago"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column How-Long-Ago-Other",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "How-Long-Ago-Other",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "almost 3 years ago"
        ],
        "to": "3 years ago"
      }
    ]
  },
  {
    "op": "core/mass-edit",
    "description": "Mass edit cells in column How-Long-Ago-Other",
    "engineConfig": {
      "mode": "row-based",
      "facets": []
    },
    "columnName": "How-Long-Ago-Other",
    "expression": "value",
    "edits": [
      {
        "fromBlank": false,
        "fromError": false,
        "from": [
          "one year ago"
        ],
        "to": "1 year ago"
      }
    ]
  }
]