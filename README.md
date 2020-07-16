# Download Comics (dl_comics)

Script that helps to download and archieve comics from (https://readcomicsonline.ru/) 

To Execute run dl_script.ksh as below

./dl_script.ksh url_for_issue path_to_save_content

By default script will create a folder of the name passed to it in $HOME/documents/comics folder.

You can compile java file with below command

javac -cp ".:./lib/jsoup-1.13.1.jar" Download.java
