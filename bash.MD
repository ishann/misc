## Get image filename (without extension) for all files in directory. Change extension based on use case.
  `for f in *.png; do printf '%s\n' "${f%.png}"; done;`

## Copy all files listed in file.txt from current directory to dest.
  for file in $(cat file.txt); do cp "$file.jpg" dest; done;

## Add a prefix string to beginning of each line in text file.
  # Edit the file in-place.
  sed -i -e 's/^/prefix/' file
  # Create a new file.
  sed -e 's/^/prefix/' file > file.new

## Editing filenames
  # Remove string from filenames.
    for file in *; do mv "${file}" "${file//\remSubstring/}"; done

  # Add string to fileneames.
    for f in *; do mv "$f" "addSubstring$f"; done

# Add prefix to all filenames in directory
  for file in *; do mv $file prefix$file; done;
  
# Look for a pattern in all files in a directory, recursively.
  grep -rnw 'pathToSomewhere' -e "pattern"
  # -r or -R is recursive,
  # -n is line number, and
  # -w stands for match the whole word.
  # -l (lower-case L) can be added to just give the file name of matching files.

# Recursively copy all files of certain type to (single) new directory.
  find . -name \*.jpg -exec cp {} newDir \;

# Resize using imagemagick. Edit extensions and dimensions before blindly copy-pasting.
  find . -name "*.jpg" -exec convert {} -resize 360X640 {} \;   

# Edit files (recursively).
  # Recursively list all unique file extensions. [cf. madratman]
    find ./ -type f | awk -F . '{print $NF}' |  sort --unique

  # Change file names to new pattern. Might require apt-get exiftool first. [cf. madratman] 
    exiftool -ext '' '-filename<%f_${ImageSize}.${FileType}' .

  # Replace a substring in filenames. [cf. madratman]
    rename 's/pastSubstring/presSubstring/' *.FILE_EXTENSION

# Count number of files in every sub-directory in present directory
  for i in $(find . -maxdepth 1 -type d) ; do 
      echo -n $i": " ; 
      (find $i -type f | wc -l) ; 
  done
  
# Recursively convert all files from ext1 to ext2
  find . -name '*.ext1' -type f -exec bash -c 'convert "$0" "${0%.ext1}.ext2"' {} \;

