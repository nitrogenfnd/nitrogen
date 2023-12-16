for branch in $(git branch -r | grep -v '\->' | awk -F'/' '{print $2}'); do
    git branch --track $branch origin/$branch
done
git fetch --all

