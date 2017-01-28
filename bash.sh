# Get image filename (without extension) for all files in directory.
for f in *.png; do printf '%s\n' "${f%.png}"; done;

# Copy all files listed in file.txt from current directory to dest
for file in $(cat file.txt); do cp "$file.jpg" dest; done;
