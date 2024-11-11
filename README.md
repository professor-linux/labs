Objectives for grep Project


use chmod +x on grep_tasks.h as this will grade your project.


Directory: /workspaces/labs


Task 1: Search for a Specific Word

Objective: Use grep to search for the word "fox" in sample_text.txt.
Instructions: Use a basic grep command to find all lines containing "fox." This task helps you understand how to locate a specific word in a file.
Task 2: Count Occurrences of a Word

Objective: Count the number of times the word "fox" appears in the file.
Instructions: Use grep to show only matches for "fox" and then count them. This task teaches you how to check the frequency of a word in a file.
Task 3: Case-Insensitive Search

Objective: Search for the word "grep" without worrying about capitalization (finds "GREP," "grep," etc.).
Instructions: Modify your grep command to ignore capitalization, making your search case-insensitive. This is useful when you don’t know how a word might be capitalized in a file.
Task 4: Display Line Numbers

Objective: Display the line numbers for each line containing the word "fox".
Instructions: Adjust your grep command to show the line number alongside each match for "fox." This helps you locate specific lines in a file.
Task 5: Invert Match

Objective: Display all lines that do not contain the word "fox".
Instructions: Set up grep to show only the lines that do not include "fox." This is helpful when you want to exclude specific content from your search results.
Task 6: Whole Word Search

Objective: Search for "dog" as a whole word, so it won’t match parts of words like "dogged" or "doghouse."
Instructions: Configure your grep command to find "dog" only as a standalone word. This is useful when you need exact matches for whole words, not parts of words.
Task 7: Recursive Directory Search

Objective: Search for the word "fox" in all files within a directory and its subdirectories.
Instructions: Use grep to search through multiple files by making it recursive. This allows you to find matches across multiple files in different folders.
Task 8: Pattern Matching with Extended Regular Expressions (GRE)

Objective: Use extended pattern matching to search for either "fox" or "dog".
Instructions: Apply extended regular expressions to search for multiple patterns in one command. This is a powerful way to match more complex patterns in your searches.












Algorithms: GRE vs. BRE

The grep command offers different pattern-matching styles based on two algorithms:

Basic Regular Expressions (BRE)
The default pattern-matching engine for grep is based on Basic Regular Expressions (BRE). In BRE mode, metacharacters like * and . have special meanings, but to use more advanced patterns, you need to escape certain symbols (like + and ?).

General Regular Expressions (GRE)
With the -E flag (egrep), grep uses General Regular Expressions (GRE), which is more powerful and includes additional metacharacters without needing to escape them. This mode is helpful for complex pattern matching and allows for extended regular expressions (e.g., +, {}, ?) directly without escaping.
