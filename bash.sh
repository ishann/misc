# Get image filename (without extension) for all files in directory. Change extension based on use case.
  for f in *.png; do printf '%s\n' "${f%.png}"; done;

# Copy all files listed in file.txt from current directory to dest.
  for file in $(cat file.txt); do cp "$file.jpg" dest; done;

# Add a prefix string to beginning of each line in text file.
  # Edit the file in-place
  sed -i -e 's/^/prefix/' file
  # Create a new file
  sed -e 's/^/prefix/' file > file.new
  
# Add prefix to all filenames in directory
  for file in *; do mv $file prefix$file; done;
  
# Look for a pattern in all files in a directory, recursively.
  grep -rnw '/path/to/somewhere/' -e "pattern"
  # -r or -R is recursive,
  # -n is line number, and
  # -w stands for match the whole word.
  # -l (lower-case L) can be added to just give the file name of matching files.

