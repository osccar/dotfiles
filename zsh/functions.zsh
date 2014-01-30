# ------------------------------------------------------------------------------
#          FILE:  functions.zsh
#   DESCRIPTION:  my zsh functions
#        AUTHOR:  Oscar Carrero (osccar@gmail.com)
#       VERSION:  1.0
#       DATE:     January 29, 2014
# ------------------------------------------------------------------------------

# Overrides default 'rm' to move files/folders to Trash instead of delete
function trash() {
  local trash_dir="${HOME}/.Trash"
  local temp_ifs=$IFS
  IFS=$'\n'
  for item in "$@"; do
    if [[ -e "$item" ]]; then
      item_name="$(basename $item)"
      if [[ -e "${trash_dir}/${item_name}" ]]; then
        mv -f "$item" "${trash_dir}/${item_name} $(date "+%H-%M-%S")"
      else
        mv -f "$item" "${trash_dir}/"
      fi
    fi
  done
  IFS=$temp_ifs
}

