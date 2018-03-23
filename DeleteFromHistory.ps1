# Check if the git folder exists.
if (!(Test-Path -Path ".git")) {
    Write-Error "Could not find git repository. Make sure the current folder is one."
    exit 1
}
 
# Remove the files which have been passed as arguments.
git filter-branch -f --index-filter "git rm -rf --cached --ignore-unmatch $args" HEAD
 
# Cleanup.
if ((Test-Path -Path ".git/refs/original/")) {
    Remove-Item ".git/refs/original/" -Force -Recurse 
}
git reflog expire --all
git gc --aggressive --prune