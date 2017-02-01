# Get image filename (without extension) for all files in directory.
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
