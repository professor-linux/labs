#!/bin/bash

# Define file location
file_location="/workspaces/labs/sample_text.txt"

# Task 1: Search for the word "fox"
if grep -q "fox" "$file_location"; then
  echo "Task 1: Search for a specific word - Passed"
else
  echo "Task 1: Search for a specific word - Failed"
fi

# Task 2: Count occurrences of the word "fox"
count=$(grep -o "fox" "$file_location" | wc -l)
if [ "$count" -eq 2 ]; then
  echo "Task 2: Count occurrences - Passed"
else
  echo "Task 2: Count occurrences - Failed"
fi

# Task 3: Case-insensitive search for "grep"
if grep -iq "grep" "$file_location"; then
  echo "Task 3: Case-insensitive search - Passed"
else
  echo "Task 3: Case-insensitive search - Failed"
fi

# Task 4: Display line numbers for "fox"
if grep -n "fox" "$file_location" | grep -q "^"; then
  echo "Task 4: Display line numbers - Passed"
else
  echo "Task 4: Display line numbers - Failed"
fi

# Task 5: Invert match to exclude lines with "fox"
if grep -v "fox" "$file_location" | grep -q "welcome"; then
  echo "Task 5: Invert match - Passed"
else
  echo "Task 5: Invert match - Failed"
fi

# Task 6: Whole word search for "dog"
if grep -w "dog" "$file_location" | grep -q "dog"; then
  echo "Task 6: Whole word search - Passed"
else
  echo "Task 6: Whole word search - Failed"
fi

# Task 7: Recursive search for "fox" (ensure additional files exist)
if grep -r "fox" "/workspaces/labs/" | grep -q "^"; then
  echo "Task 7: Recursive search - Passed"
else
  echo "Task 7: Recursive search - Failed"
fi

# Task 8: Extended regular expression search for "fox|dog"
if grep -E "fox|dog" "$file_location" | grep -q "fox"; then
  echo "Task 8: Pattern matching with GRE - Passed"
else
  echo "Task 8: Pattern matching with GRE - Failed"
fi
