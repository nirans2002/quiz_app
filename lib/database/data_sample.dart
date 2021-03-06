const dataSample = [
  {
    "id": 659,
    "question": "Which command can be used to display file contents in octal?",
    "description": null,
    "answers": {
      "answer_a": "od",
      "answer_b": "octal",
      "answer_c": "oshow",
      "answer_d": "oct",
      "answer_e": null,
      "answer_f": null
    },
    "multiple_correct_answers": "false",
    "correct_answers": {
      "answer_a_correct": "true",
      "answer_b_correct": "false",
      "answer_c_correct": "false",
      "answer_d_correct": "false",
      "answer_e_correct": "false",
      "answer_f_correct": "false"
    },
    "correct_answer": "answer_a",
    "explanation": null,
    "tip": null,
    "tags": [
      {"name": "BASH"}
    ],
    "category": "Linux",
    "difficulty": "Medium"
  },
  {
    "id": 688,
    "question": "What is an internal command?",
    "description": null,
    "answers": {
      "answer_a": "Shell built in commands are called as internal commands.",
      "answer_b":
          "Shell commands which are executed on the local machine are called internal commands.",
      "answer_c":
          "Every command which comes with the default installation of Linux is called internal command with some small exceptions like really old commands.",
      "answer_d":
          "Every command which has been developed by the new generation of Linux is considered an internal command.",
      "answer_e": null,
      "answer_f": null
    },
    "multiple_correct_answers": "false",
    "correct_answers": {
      "answer_a_correct": "true",
      "answer_b_correct": "false",
      "answer_c_correct": "false",
      "answer_d_correct": "false",
      "answer_e_correct": "false",
      "answer_f_correct": "false"
    },
    "correct_answer": "answer_a",
    "explanation": null,
    "tip": null,
    "tags": [
      {"name": "BASH"},
      {"name": "Linux"}
    ],
    "category": "Linux",
    "difficulty": "Medium"
  },
  {
    "id": 701,
    "question":
        "How can you count for a particular pattern occurrences in a file?",
    "description": null,
    "answers": {
      "answer_a": "grep \u2212c \u201cpattern\u201d <file>",
      "answer_b": "grep \u2212k \u201cpattern\u201d <file>",
      "answer_c": "cat <file> | wc -k \u201cpattern\u201d",
      "answer_d": "cat <file> | wc -l \u201cpattern\u201d",
      "answer_e": null,
      "answer_f": null
    },
    "multiple_correct_answers": "false",
    "correct_answers": {
      "answer_a_correct": "true",
      "answer_b_correct": "false",
      "answer_c_correct": "false",
      "answer_d_correct": "false",
      "answer_e_correct": "false",
      "answer_f_correct": "false"
    },
    "correct_answer": null,
    "explanation": null,
    "tip": null,
    "tags": [
      {"name": "BASH"}
    ],
    "category": "Linux",
    "difficulty": "Medium"
  },
  {
    "id": 697,
    "question": "What is inode?",
    "description": null,
    "answers": {
      "answer_a":
          "A file is given a unique number by OS and is called as inode.",
      "answer_b":
          "A directory is given a unique number by OS and is called as inode.",
      "answer_c":
          "A file is given a predifined number by OS and is called as inode.",
      "answer_d":
          "A directory is given a predifined number by OS and is called as inode.",
      "answer_e": null,
      "answer_f": null
    },
    "multiple_correct_answers": "false",
    "correct_answers": {
      "answer_a_correct": "true",
      "answer_b_correct": "false",
      "answer_c_correct": "false",
      "answer_d_correct": "false",
      "answer_e_correct": "false",
      "answer_f_correct": "false"
    },
    "correct_answer": null,
    "explanation": null,
    "tip": null,
    "tags": [
      {"name": "BASH"},
      {"name": "Linux"}
    ],
    "category": "Linux",
    "difficulty": "Medium"
  },
  {
    "id": 684,
    "question": "What is the default value of UMASK?",
    "description": null,
    "answers": {
      "answer_a": "022",
      "answer_b": "044",
      "answer_c": "777",
      "answer_d": "222",
      "answer_e": null,
      "answer_f": null
    },
    "multiple_correct_answers": "false",
    "correct_answers": {
      "answer_a_correct": "true",
      "answer_b_correct": "false",
      "answer_c_correct": "false",
      "answer_d_correct": "false",
      "answer_e_correct": "false",
      "answer_f_correct": "false"
    },
    "correct_answer": null,
    "explanation": null,
    "tip": null,
    "tags": [
      {"name": "BASH"},
      {"name": "Linux"}
    ],
    "category": "Linux",
    "difficulty": "Medium"
  },
  {
    "id": 660,
    "question":
        "What is the option to mention field separator for the command \u2018cut\u2019",
    "description": null,
    "answers": {
      "answer_a": "-f",
      "answer_b": "-c",
      "answer_c": "-d",
      "answer_d": "\\0",
      "answer_e": null,
      "answer_f": null
    },
    "multiple_correct_answers": "false",
    "correct_answers": {
      "answer_a_correct": "false",
      "answer_b_correct": "false",
      "answer_c_correct": "true",
      "answer_d_correct": "false",
      "answer_e_correct": "false",
      "answer_f_correct": "false"
    },
    "correct_answer": "answer_a",
    "explanation": null,
    "tip": null,
    "tags": [
      {"name": "BASH"}
    ],
    "category": "Linux",
    "difficulty": "Medium"
  },
  {
    "id": 669,
    "question":
        "Choose the option to remove write permission for group & others for a file \u201ca.txt\u201d.",
    "description": null,
    "answers": {
      "answer_a":
          "Select disable write for group and others where file=\u201da.txt\u201d",
      "answer_b": "chmod go-w a.txt",
      "answer_c": "chmod w-go a.txt",
      "answer_d": "chmod go=\u201dr-x\u201d a.txt",
      "answer_e": null,
      "answer_f": null
    },
    "multiple_correct_answers": "false",
    "correct_answers": {
      "answer_a_correct": "false",
      "answer_b_correct": "true",
      "answer_c_correct": "false",
      "answer_d_correct": "false",
      "answer_e_correct": "false",
      "answer_f_correct": "false"
    },
    "correct_answer": "answer_a",
    "explanation": null,
    "tip": null,
    "tags": [
      {"name": "BASH"}
    ],
    "category": "Linux",
    "difficulty": "Medium"
  },
  {
    "id": 699,
    "question": "How are devices represented in UNIX\/Linux?",
    "description": null,
    "answers": {
      "answer_a":
          "For UNIX\/Linux every device is a file and are typically located in the directory \/dev.",
      "answer_b":
          "For UNIX\/Linux every device is a block and are typically located in the directory \/dev.",
      "answer_c":
          "For UNIX\/Linux every device is a file and are typically located in the directory \/proc.",
      "answer_d":
          "For UNIX\/Linux every device is a block and are typically located in the directory \/proc.",
      "answer_e": null,
      "answer_f": null
    },
    "multiple_correct_answers": "false",
    "correct_answers": {
      "answer_a_correct": "true",
      "answer_b_correct": "false",
      "answer_c_correct": "false",
      "answer_d_correct": "false",
      "answer_e_correct": "false",
      "answer_f_correct": "false"
    },
    "correct_answer": "answer_a",
    "explanation": null,
    "tip": null,
    "tags": [
      {"name": "BASH"},
      {"name": "Linux"}
    ],
    "category": "Linux",
    "difficulty": "Medium"
  },
  {
    "id": 679,
    "question": "Which are the three looping constructs provided by shell",
    "description": null,
    "answers": {
      "answer_a": "while",
      "answer_b": "for",
      "answer_c": "until",
      "answer_d": "foreach",
      "answer_e": "done",
      "answer_f": "each"
    },
    "multiple_correct_answers": "true",
    "correct_answers": {
      "answer_a_correct": "true",
      "answer_b_correct": "true",
      "answer_c_correct": "true",
      "answer_d_correct": "false",
      "answer_e_correct": "false",
      "answer_f_correct": "false"
    },
    "correct_answer": null,
    "explanation": null,
    "tip": null,
    "tags": [
      {"name": "BASH"},
      {"name": "Linux"}
    ],
    "category": "Linux",
    "difficulty": "Medium"
  },
  {
    "id": 683,
    "question": "Expand UFS in context of file system?",
    "description": null,
    "answers": {
      "answer_a": "UNIX File system.",
      "answer_b": "Linux File System.",
      "answer_c": "Plain File System.",
      "answer_d": "Linux Failing System.",
      "answer_e": null,
      "answer_f": null
    },
    "multiple_correct_answers": "false",
    "correct_answers": {
      "answer_a_correct": "true",
      "answer_b_correct": "false",
      "answer_c_correct": "false",
      "answer_d_correct": "false",
      "answer_e_correct": "false",
      "answer_f_correct": "false"
    },
    "correct_answer": null,
    "explanation": null,
    "tip": null,
    "tags": [
      {"name": "BASH"},
      {"name": "Linux"}
    ],
    "category": "Linux",
    "difficulty": "Medium"
  },
  {
    "id": 666,
    "question": "Which command is used to print the directory stack?",
    "description": null,
    "answers": {
      "answer_a": "popd",
      "answer_b": "dir",
      "answer_c": "ls -d",
      "answer_d": "dirs",
      "answer_e": null,
      "answer_f": null
    },
    "multiple_correct_answers": "false",
    "correct_answers": {
      "answer_a_correct": "false",
      "answer_b_correct": "false",
      "answer_c_correct": "false",
      "answer_d_correct": "true",
      "answer_e_correct": "false",
      "answer_f_correct": "false"
    },
    "correct_answer": "answer_a",
    "explanation": null,
    "tip": null,
    "tags": [
      {"name": "BASH"}
    ],
    "category": "Linux",
    "difficulty": "Medium"
  },
  {
    "id": 752,
    "question":
        "How will you pass and access arguments to a script in Linux\/Bash?",
    "description": null,
    "answers": {
      "answer_a":
          "scriptName \u201cArg1\u201d \u201cArg2\u201d\u2026.\u201dArgn\u201d and can be accessed inside the script as .",
      "answer_b":
          "scriptName -arg \u201cArg1\u201d \u201cArg2\u201d\u2026.\u201dArgn\u201d and can be accessed inside the script .",
      "answer_c":
          "scriptName \"Arg1 Arg2\u2026.Argn\u201d and can be accessed inside the script as .",
      "answer_d":
          "scriptName \u201cArg1\u201d \u201cArg2\u201d\u2026.\u201dArgn\u201d and can be accessed inside the script as .",
      "answer_e": null,
      "answer_f": null
    },
    "multiple_correct_answers": "false",
    "correct_answers": {
      "answer_a_correct": "true",
      "answer_b_correct": "false",
      "answer_c_correct": "false",
      "answer_d_correct": "false",
      "answer_e_correct": "false",
      "answer_f_correct": "false"
    },
    "correct_answer": "answer_a",
    "explanation": null,
    "tip": null,
    "tags": [
      {"name": "BASH"}
    ],
    "category": "Linux",
    "difficulty": "Medium"
  },
  {
    "id": 708,
    "question":
        "How can we redirect the output of one command to the another command?",
    "description": null,
    "answers": {
      "answer_a": "Place the commands connected with pipes (|).",
      "answer_b": "Use the Xargs command",
      "answer_c": "Use the stdin and stdout",
      "answer_d":
          "Use the numbers 1 and 2 for standart input(stdin) and standart output(stdout)",
      "answer_e": "Both commands which include stdin and stdout",
      "answer_f": null
    },
    "multiple_correct_answers": "false",
    "correct_answers": {
      "answer_a_correct": "true",
      "answer_b_correct": "false",
      "answer_c_correct": "false",
      "answer_d_correct": "false",
      "answer_e_correct": "false",
      "answer_f_correct": "false"
    },
    "correct_answer": null,
    "explanation": null,
    "tip": null,
    "tags": [
      {"name": "BASH"},
      {"name": "Linux"}
    ],
    "category": "Linux",
    "difficulty": "Medium"
  },
  {
    "id": 651,
    "question": "What is the option to create hard link for a directory?",
    "description": null,
    "answers": {
      "answer_a": "-s",
      "answer_b": "-l",
      "answer_c": "-f",
      "answer_d": "None of the above",
      "answer_e": null,
      "answer_f": null
    },
    "multiple_correct_answers": "false",
    "correct_answers": {
      "answer_a_correct": "false",
      "answer_b_correct": "false",
      "answer_c_correct": "false",
      "answer_d_correct": "true",
      "answer_e_correct": "false",
      "answer_f_correct": "false"
    },
    "correct_answer": "answer_a",
    "explanation": null,
    "tip": null,
    "tags": [
      {"name": "BASH"}
    ],
    "category": "Linux",
    "difficulty": "Medium"
  },
  {
    "id": 673,
    "question":
        "Which command can be used to make variables of shell to be made available to sub shell?",
    "description": null,
    "answers": {
      "answer_a": "import",
      "answer_b": "export",
      "answer_c": "echo",
      "answer_d": "set",
      "answer_e": null,
      "answer_f": null
    },
    "multiple_correct_answers": "false",
    "correct_answers": {
      "answer_a_correct": "false",
      "answer_b_correct": "true",
      "answer_c_correct": "false",
      "answer_d_correct": "false",
      "answer_e_correct": "false",
      "answer_f_correct": "false"
    },
    "correct_answer": "answer_a",
    "explanation": null,
    "tip": null,
    "tags": [
      {"name": "BASH"}
    ],
    "category": "Linux",
    "difficulty": "Medium"
  }
];

List resultData = [
  true,
  false,
  false,
  true,
  true,
  true,
  true,
  true,
  true,
  false,
  false,
  true,
  false,
  false,
  true,
  true,
  false,
  false,
  true,
  true,
];
//TODO : source for result