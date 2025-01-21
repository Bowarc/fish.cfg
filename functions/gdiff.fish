function gdiff
    # Change to the project root directory
    set project_root (git rev-parse --show-toplevel)
    cd $project_root

    # Use fzf to select files and show diffs
    git diff --name-only | fzf --multi --ansi --preview-window right:70% --preview "git diff --color=always -- {}" --bind "ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down"

    # Return to the previous directory
    # cd -
end
