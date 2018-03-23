# DeleteFromHistory.ps1

This script allows you to remove files from your git history by leveraging `git filter-branch`. You simply run it and pass the files you want removed as arguments (ex. `./DeleteFromHistory.ps1 *.dll Project\Settings`) and it will go through the entire history of your repository and delete those files. (In the case of the example all "dll" files and the Project\Settings folder where it exists.)

#### Notes
 - This operation will change the SHA1 of all your commits and history.
 - This operation **WILL NOT** modify your remote. After running the script you can push the changes using `git push -f`
