# This script was created to convert a directory full
# of wikimedia files into adoc equivalents. It uses
# pandoc to do the conversion.
#
# 1. Install pandoc from http://johnmacfarlane.net/pandoc/
# 2. Copy this script into the directory containing the .md files
# 3. Ensure that the script has execute permissions
# 4. Run the script
#
# By default this will keep the original file

FILES=*.wiki
for f in $FILES
do
  # extension="${f##*.}"
  filename="${f%.*}"
  echo "Converting $f to $filename.adoc"
  `pandoc "$f" -f mediawiki -t asciidoc -o "$filename.adoc"`
  # uncomment this line to delete the source file.
  # rm $f
done

