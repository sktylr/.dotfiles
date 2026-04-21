_zsh_theme_ensure_files() {
    mkdir -p "$(dirname $ZSH_THEME_LIKED)"
    touch "$ZSH_THEME_LIKED" "$ZSH_THEME_DISLIKED"
}

theme-like() {
    local theme="${1:-$RANDOM_THEME}"
    [[ -z "$theme" ]] && echo "No theme specified or active" && return 1
    _zsh_theme_ensure_files
    if grep -qxF "$theme" "$ZSH_THEME_LIKED"; then
        echo "Already liked: $theme"
    else
        echo "$theme" >> "$ZSH_THEME_LIKED"
        echo "Liked: $theme"
        sed -i '' "/^${theme}$/d" "$ZSH_THEME_DISLIKED"
        ZSH_THEME_RANDOM_IGNORED=( ${ZSH_THEME_RANDOM_IGNORED:#$theme} )
    fi
}

theme-dislike() {
  local theme="${1:-$RANDOM_THEME}"
  [[ -z "$theme" ]] && echo "No theme specified or active." && return 1
  _zsh_theme_ensure_files
  if grep -qxF "$theme" "$ZSH_THEME_DISLIKED"; then
    echo "Already disliked: $theme"
  else
    echo "$theme" >> "$ZSH_THEME_DISLIKED"
    echo "Disliked: $theme"
    sed -i '' "/^${theme}$/d" "$ZSH_THEME_LIKED"
    ZSH_THEME_RANDOM_IGNORED+=( "$theme" )
  fi
}

theme-list() {
  _zsh_theme_ensure_files
  echo "Liked themes:"
  cat "$ZSH_THEME_LIKED" | sed 's/^/  /'
  echo "Disliked themes:"
  cat "$ZSH_THEME_DISLIKED" | sed 's/^/  /'
}
