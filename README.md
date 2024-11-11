Objectives for grep Project


use chmod +x on grep_tasks.h as this will grade your project.


Directory: /workspaces/labs


Task-by-Task Instructions
Use sample_text.txt as your input file for each task. Here’s what you need to do:

Task 1: Search for a Specific Word

Objective: Use grep to search for the word "fox" in sample_text.txt.
Instructions: Use a grep command that outputs all lines containing "fox" and save the output in /workspaces/labs/obj-1.txt.


Task 2: Count Occurrences of a Word

Objective: Count how many times the word "fox" appears in the file.
Instructions: Modify your grep command to show only the occurrences of "fox," then count them and save the count in /workspaces/labs/obj-2.txt.


Task 3: Case-Insensitive Search

Objective: Search for the word "grep" without worrying about capitalization (finds "GREP," "grep," etc.).
Instructions: Use a grep command that performs a case-insensitive search for "grep," and save the result in /workspaces/labs/obj-3.txt.


Task 4: Display Line Numbers

Objective: Display the line numbers for each line containing the word "fox".
Instructions: Configure your grep command to show the line number for each line that contains "fox" and save it in /workspaces/labs/obj-4.txt.


Task 5: Invert Match

Objective: Display all lines that do not contain the word "fox".
Instructions: Use grep to output only the lines that do not include "fox" and save them in /workspaces/labs/obj-5.txt.


Task 6: Whole Word Search

Objective: Search for "dog" as a whole word, so it won’t match words like "dogged" or "doghouse."
Instructions: Use grep to search for "dog" as a whole word only and save the result in /workspaces/labs/obj-6.txt.


Task 7: Recursive Directory Search

Objective: Search for the word "fox" in all files within a directory and its subdirectories.
Instructions: Run a grep command that searches for "fox" in all files under /workspaces/labs/ and save the output in /workspaces/labs/obj-7.txt.


Task 8: Pattern Matching with Extended Regular Expressions

Objective: Use pattern matching to search for either "fox" or "dog".
Instructions: Use a grep command with extended regular expressions to search for both "fox" and "dog" in sample_text.txt. Save the results in /workspaces/labs/obj-8.txt.










Algorithms: GRE vs. BRE

The grep command offers different pattern-matching styles based on two algorithms:

Basic Regular Expressions (BRE)
The default pattern-matching engine for grep is based on Basic Regular Expressions (BRE). In BRE mode, metacharacters like * and . have special meanings, but to use more advanced patterns, you need to escape certain symbols (like + and ?).

General Regular Expressions (GRE)
With the -E flag (egrep), grep uses General Regular Expressions (GRE), which is more powerful and includes additional metacharacters without needing to escape them. This mode is helpful for complex pattern matching and allows for extended regular expressions (e.g., +, {}, ?) directly without escaping.
