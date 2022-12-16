# git reference guide

## Create a new Git repository _(from localhost)_

If you have a project on your computer and you just created an empty Git repository in GitHub, use these commands to upload everything to Git.

```bash
cd project-dir
git init
git remote add origin git@github.com:your-username/your-repo.git
git add .
git commit -am "[Initials][TicketId] Summary of work being performed"
git push -u origin main
```

## Clone a repo

If your repository exists in GitHub, and you're working on it in a different local computer. Run this command outside of where you want the new directory to appear.

```bash
SSH: git clone git@github.com:your-username/your-repo.git
HTTPS: git clone https://github.com/your-username/your-repo.git
```

## Remove file from Git cache

Removes cached file.

```bash
git rm -r —-cached file.txt
```

## Override entire local directory

If you have some merge conflicts, or accidentally started to make a change to your local directory before pulling the changes from the main, here's how you can revert your local directory to what's on GitHub.

```bash
git fetch --all
git reset --hard origin/main
```

## Force a push or pull

```bash
git push -f origin main
git pull -f origin main
```

## Merging changes from remote pull request with conflicts

Make a new branch with their changes.

```bash
git checkout -b their-branch main
git pull their.git main
```

Play with the files and commit them.

```bash
git add files
git commit -m “Message"
git push origin main
```

Merge back into your branch.

```bash
git checkout main
git merge --no-ff <their-branch) (:wq!)
git push origin main
```

## Remove branch

Put a `:` in front to remove instead of update remotely.

```bash
git push origin :branch-name
```

Use `--delete` or `-D` for local.

```
git branch --delete branch-name
```

## Replace main with contents of another branch

```bash
git checkout branch-name
git merge -s ours main
git checkout main
git merge branch-name
```

## Remove all local branches except main

```bash
git branch | grep -v "main" | xargs git branch -D
```

More than one branch may be added to the grep. To remove all local branches except "main" and "develop":

```bash
git branch | grep -v "main\|develop" | xargs git branch -D
```

## Merge new-feature branch into main

Merge branches, however I try to favor using automation or just the web interface.

```bash
git checkout main
git pull origin main
git merge new-feature
git push origin main
```

## Switch to branch that exists on origin

```bash
git fetch --prune --all
git checkout other-branch
```

## Fetch branch from origin

```bash
git fetch origin
git checkout --track origin/<remote_branch_name>
```

## Rebase from develop

```bash
git fetch --prune --all
git rebase origin/develop
git pull
git push
```

## Stashing

Put your changes away and switch to another branch

```bash
git stash
git checkout -b new-branch
git stash pop
```

## Accidentally committed to develop and want to move that commit to a branch

```bash
git branch new-branch
git reset HEAD~1
git checkout <files>
```
