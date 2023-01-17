fish_vi_key_bindings

function fish_greeting
    # echo Hello friend!
    # echo The time is (set_color yellow; date +%T; set_color normal) and this machine is called $hostname
  echo ⠀(set_color yellow)⠀⠀⣤⣤⠀⠀(set_color normal)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀
  echo ⠀(set_color yellow)⠀⠀⣿⣿⠀(set_color red)⠀⠀⣀⣀⡀⠀⣀⣀⠀(set_color normal)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  echo ⠀(set_color yellow)⠀⠀⢸⣿⠀(set_color red)⠀⣾⣿⣿⣿⣾⣿⣿⣷⠀⠀(set_color normal)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⣿⡿⠏⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠁⠀⠀⠀⣰⣶⡀⠀⠀⠀⠀
  echo ⠀(set_color yellow)⠀⠀⢸⣿⠀(set_color red)⠀⠻⣿⣿⣿⣿⣿⣿⡿⠀⠀(set_color normal)⠀⢰⣶⣶⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣶⣿⣿⣿⠟⠋⠀⠀⠀⠀⠀⣠⣶⣿⣿⠀⠸⣿⣿⣷⣶⣶⣿⣿⡿⠀⠀⠀⠀⠀
  echo ⠀(set_color yellow)⠀⠀⣠⣤⠀⠀(set_color red)⠀⠙⢿⣿⣿⡿⠋⠀⠀⠀⠀(set_color normal)⠀⠻⢿⣿⣿⣿⣿⣿⣷⣶⣾⣿⣿⣿⣿⣿⡿⠟⠉⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⠟⠉⠀⠀⠙⠻⠿⠿⠿⠟⣋⣀⣤⣄⡀⠀⠀
  echo ⠀(set_color yellow)⠀⠀⠈⠉⠀⠀(set_color red)⠀⠀⠀⢻⡟⠁⠀⠀⠀⠀⠀(set_color normal)⠀⠀⠀⠈⠉⠛⠛⠻⠿⠿⠿⠛⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⠿⠿⠃⠀⠀
  echo ⠀⠀⠀⠀⠀⠀⠀⠀(set_color red)⠀⠀⠀⠀⠀⠀⠀⠀(set_color normal)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⡄⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠛⠉⠀⠀⠀⠀⠀⠀
  echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
  
end

function la --wraps=ls --wraps=exa --description 'List contents of directory using exa grid'
  exa --grid --icons -a --long --header --accessed --group-directories-first $argv
end

function ll --wraps=ls --wraps=exa --description 'List contents of directory using exa tree'
  exa --tree --level=1 --long --header --accessed --group-directories-first $argv
end

function lla --wraps=ls --wraps=exa --description 'List contents of directory using exa tree'
  exa --tree --level=1 -a --long --header --accessed --group-directories-first $argv
end

function lll --wraps=ls --wraps=exa --description 'List contents of directory using exa tree'
  exa --tree --level=2 -a --long --header --accessed --group-directories-first $argv
end

function llll --wraps=ls --wraps=exa --description 'List contents of directory using exa tree'
  exa --tree --level=3 -a --long --header --accessed --group-directories-first $argv
end

starship init fish | source

zoxide init fish | source

