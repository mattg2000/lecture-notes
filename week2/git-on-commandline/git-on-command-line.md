# Intro to the command line & Git

## Commands prior to starting

- Make sure students run the following command: `git config --global --unset pull.rebase`
- Info on how to get Windows users to have Git Bash as their terminal:
  - https://stackoverflow.com/questions/27678608/git-command-is-not-recognized-on-terminal-tool-window-in-intellij-idea

## Why should I use the command line when I could use a GUI instead?
- It's generally better supported than GUI-based tools.
- It's independent from your IDE.
- It helps you come to a better understanding of the principles of version control.
- It's much more commonly used in the industry and thus is more likely to get you a job.
- It's much more likely to be useful if you find yourself in a sticky merge/rebase situation that you can't seem to fix.

## Git Commands
### Staging and Committing
- `git init` - Initialize a new git repo.  You can do this where there's already files, or where you want to create something shiny and new. 
- `git status` - Tells you what's in your repo that's different from your last commit.
- `git add my-file.txt` or `git add my-folder` - Add a file to be staged. Use the -a flag to make sure that you also get file deletions. 
- `git commit - m "Adding my feature"` - Create a new commit with all your currently staged changes.
- `git log` - List past commits.

### Working with remotes
- Create a new repo on github: https://help.github.com/en/articles/adding-an-existing-project-to-github-using-the-command-line
- `git remote add origin git@github.com:User/UserRepo.git` - Take your existing local repo and push it up to the server.
- `git push` - Send your changes to the remote repo
- `git pull` or `git pull --rebase` - Get others' changes from the remote repo
  - These are shorthand for two other commands: `git pull` is short for `git fetch` and `git merge`. `git pull --rebase` aliases to `git fetch` and then `git rebase`.
  - `git fetch` downloads the changes, but does not integrate them into the repository.
  - `git merge` creates a new "merge commit" that ties the local and remote changes together.
  - `git rebase` adds the commits from the remote project onto the end of the local project.
- `git clone` - Go get a repository that already exists and pull it to your local machine.

For more on Git, see: https://bootcamp-coders.cnm.edu/class-materials/git/