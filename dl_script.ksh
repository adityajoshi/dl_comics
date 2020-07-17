#!/bin/ksh
issue=`echo $2 | awk 'BEGIN{FS="/"} {print $NF}'`
dest_base="$HOME/documents/comics/"
dest_folder="$dest_base/$2"
mkdir -p $dest_folder

java -cp ".:./lib/jsoup-1.13.1.jar" Download "$1" > $dest_folder/links

cd $dest_folder

last_num=`grep -c "jpg" links`
url=`awk 'BEGIN{FS="/"; OFS=FS;} { $NF=""; print $0}' links  | head -n1`

curl -O -s $url[01-$last_num].jpg

zip $issue.cbz *.jpg
mv $issue.cbz ./..
cd -
rm -rf $dest_folder
