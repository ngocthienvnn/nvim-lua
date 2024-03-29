# put this file into ~/.config/fish/functions
function fish_prompt --description 'Write out the prompt'
  set -l last_status $status

  set_color yellow -o
  printf '%s' $USER
  set_color f55812 -o
  printf '@'

  set_color blue -o
  echo -n (prompt_hostname)
  set_color blue -o
  printf ' $ '

  set_color $fish_color_cwd
  printf '%s' (pwd)
  set_color normal


  # PWD
  set -g __fish_git_prompt_char_cleanstate '✔'
  set -g __fish_git_prompt_color_branch_dirty cyan
  set -g __fish_git_prompt_color_untrackedfiles cyan
  set -g __fish_git_prompt_color_branch_staged grey
  set -g __fish_git_prompt_color_stagedstate grey
  set_color  -o
  __terlar_git_prompt
  # fish_hg_prompt
  echo

  if not test $last_status -eq 0
    set_color $fish_color_error
  end


  set_color f55812 -o
  echo -n ' ➤ ➤ ➤ $ '
end
