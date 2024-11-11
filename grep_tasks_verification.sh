#!/bin/bash

# Set the directory where the answer files are stored
answer_dir="/workspaces/labs"
sample_file="${answer_dir}/sample_text.txt"

# Task descriptions and expected results
echo "Starting task verification..."

# Task 1: Search for "fox" in sample_text.txt
if grep -q "fox" "$answer_dir/obj-1.txt"; then
  echo "Task 1: Passed"
else
  echo "Task 1: Failed - Ensure obj-1.txt contains lines with 'fox'"
fi

# Task 2: Count occurrences of "fox" (expected 2 occurrences)
expected_count=2
actual_count=$(grep -o "fox" "$answer_dir/obj-2.txt" | wc -l)
if [ "$actual_count" -eq "$expected_count" ]; then
  echo "Task 2: Passed"
else
  echo "Task 2: Failed - Ensure obj-2.txt shows 'fox' appears $expected_count times"
fi

# Task 3: Case-insensitive search for "grep" in sample_text.txt
if grep -iq "grep" "$answer_dir/obj-3.txt"; then
  echo "Task 3: Passed"
else
  echo "Task 3: Failed - Ensure obj-3.txt contains case-insensitive matches for 'grep'"
fi

# Task 4: Display line numbers with "fox" matches
if grep -E "^[0-9]+:" "$answer_dir/obj-4.txt" | grep -q "fox"; then
  echo "Task 4: Passed"
else
  echo "Task 4: Failed - Ensure obj-4.txt includes line numbers with each 'fox' match"
fi

# Task 5: Invert match for "fox"
if ! grep -q "fox" "$answer_dir/obj-5.txt" && grep -q "." "$answer_dir/obj-5.txt"; then
  echo "Task 5: Passed"
else
  echo "Task 5: Failed - Ensure obj-5.txt excludes lines with 'fox'"
fi

# Task 6: Whole word search for "dog"
if grep -wq "dog" "$answer_dir/obj-6.txt"; then
  echo "Task 6: Passed"
else
  echo "Task 6: Failed - Ensure obj-6.txt includes only whole word matches for 'dog'"
fi

# Task 7: Recursive directory search for "fox"
if grep -q "fox" "$answer_dir/obj-7.txt"; then
  echo "Task 7: Passed"
else
  echo "Task 7: Failed - Ensure obj-7.txt contains recursive matches for 'fox'"
fi

# Task 8: Extended regular expressions for "fox" or "dog"
if grep -Eq "fox|dog" "$answer_dir/obj-8.txt"; then
  echo "Task 8: Passed"
else
  echo "Task 8: Failed - Ensure obj-8.txt contains matches for either 'fox' or 'dog'"
fi

echo "Task verification complete."
