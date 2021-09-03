git clone https://github.com/unixorn/fzf-zsh-plugin.git fzf
git clone https://github.com/MichaelAquilina/zsh-auto-notify.git auto-notify
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git you-should-use
git clone https://github.com/hlissner/zsh-autopair.git autopair
git clone https://github.com/agkozak/zsh-z.git z

git clone https://github.com/esc/conda-zsh-completion.git conda-completi
cd conda-completion
ln -s conda-zsh-completion.plugin.zsh conda-completion.plugin.zsh
cd ..

git clone https://github.com/bckim92/zsh-autoswitch-conda.git autoswitch
cd autoswitch-conda
ln -s autoswitch_conda.plugin.zsh autoswitch-conda.plugin.zsh
cd ..

git clone https://github.com/zsh-users/zsh-syntax-highlighting syntax-hi
cd syntax-highlighting
ln -s zsh-syntax-highlighting.plugin.zsh syntax-highlighting.plugin.zsh
cd ..

git clone https://github.com/gradle/gradle-completion

git clone https://github.com/zsh-users/zsh-autosuggestions autosuggestio
cd autosuggestions
ln -s zsh-autosuggestions.plugin.zsh autosuggestions.plugin.zsh
cd ..

git clone https://github.com/zsh-users/zsh-completions.git

