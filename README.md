Objectives for grep Project

Search for a Specific Word: Use grep to search for a specific word within a file.
Count Occurrences of a Word: Find out how many times a specific word appears in a file.
Case-Insensitive Search: Search for a word without regard to case sensitivity.
Display Line Numbers: Show line numbers for each matching line.
Invert Match: Display lines that do not contain the specified word.
Search for Whole Words Only: Search for a word as a whole term rather than as a substring.
Recursive Directory Search: Use grep to search through directories and subdirectories.
Pattern Matching with GRE: Use extended regular expressions to match multiple patterns.
File Setup
To keep things organized, create a directory structure like this:

Directory: /workspaces/labs


Objectives

Learn the syntax and basic usage of grep.
Experiment with various grep flags to achieve different outcomes.
Understand the different algorithms used in grep for pattern matching.
Getting Started

To get started, make sure you’re in a Codespaces environment and open a terminal session. We’ll work with a series of example files to practice our commands.

grep Flags We’ll Cover

We'll explore several flags to see how grep behaves with each:

-c: Count the number of occurrences of a word.
-i: Case-insensitive matching.
-v: Invert match, showing lines that do not contain the specified pattern.
-w: Match whole words only.
-n: Display line numbers along with matching lines.
-r: Recursive search through directories.
Each of these flags serves a different purpose, allowing for flexible and powerful search capabilities.

Algorithms: GRE vs. BRE

The grep command offers different pattern-matching styles based on two algorithms:

Basic Regular Expressions (BRE)
The default pattern-matching engine for grep is based on Basic Regular Expressions (BRE). In BRE mode, metacharacters like * and . have special meanings, but to use more advanced patterns, you need to escape certain symbols (like + and ?).

General Regular Expressions (GRE)
With the -E flag (egrep), grep uses General Regular Expressions (GRE), which is more powerful and includes additional metacharacters without needing to escape them. This mode is helpful for complex pattern matching and allows for extended regular expressions (e.g., +, {}, ?) directly without escaping.
