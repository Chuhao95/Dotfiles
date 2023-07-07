# Creat symbolic link for dotfiles between home directory and this folder named Dotfiles
for file in ~/Dotfiles/.*; do
# Skip ., .., .git files by using regex
  if [[ ! "$file" =~ \.$|\.\.$|\.git$ ]]; then
# flag -f means force overwriting exciting dotfiles in home directory
     ln -s -f "$file" "${HOME}/${s##*/}"	
  fi
done
