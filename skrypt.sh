1.1 Introduction to Git Commits
git commit
git commit

1.2 Branching in Git
git branch bugFix
git checkout bugFix

1.3 Merging in Git
git checkout -b bugFix    
git commit  
git checkout main
git commit
git merge bugFix

1.4  Rebase Introduction
git checkout -b bugFix    
git commit    
git checkout main    
git commit    
git checkout bugFix    
git rebase main

2.1 Detach yo’ HEAD
git checkout C4

2.2 Relative Refs (^)
git checkout C4^

2.3 Relative Refs #2 (~)
git branch -f main C6
git branch -f bugFix C0
git checkout C1

2.4 Reversing Changes in Git
git reset local~1
git checkout pushed
git revert pushed

3.1 herry-pick Intro
git cherry-pick C3 C4 C7

3.2 Interactive Rebase Intro
git rebase -i main~4 --aboveAll
//Remove C2, move C5 up

4.1 Grabbing Just 1 Commit
git checkout main
git cherry-pick C4

4.2 Juggling Commits
git rebase -i caption~2 --aboveAll
git commit --amend
git rebase -i caption~2 --aboveAll
git branch -f main captio

4.3 Juggling Commits #2
git checkout main
git cherry-pick C2
git commit --amend
git cherry-pick C3

4.4 Git Tags
git tag v0 C1
git tag v1 C2
git checkout C2

4.5 Git Describe
git commit

5.1 Rebasing over 9000 times
git rebase main bugFix
git rebase bugFix side
git rebase side another
git rebase another main

5.2 Multiple Parents
git branch bugWork main~^2~

5.3 Branch Spaghetti
git checkout one
git cherry-pick C4 C3 C2
git checkout two
git cherry-pick C5 C4 C3 C2
git branch -f three C2