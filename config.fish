# Add paths to $PATH if they are not yet in it
set -l paths $HOME/.local/bin $HOME/bin $HOME/.cargo/bin
for path in $paths
    if contains $path $PATH
        continue
    end

    set -agx PATH $path
    # echo $path
end

# Rust backtrace
set -gx RUST_BACKTRACE 1

# Remove fish hello message 
set -U fish_greeting

# Initialize the z command
zoxide init fish | source

# Init oh my posh
oh-my-posh init fish --config ~/.config/oh-my-posh/pwsh10k.omp.json | source

# Flatpak aliases
# alias discord="flatpak run dev.vencord.Vesktop"
alias osu="flatpak run sh.ppy.osu"
alias easyeffects="flatpak run com.github.wwmm.easyeffects"
alias spotube="flatpak run com.github.KRTirtho.Spotube"
alias obs="flatpak run com.obsproject.Studio"

# Other aliases
alias ls="eza -las type"
alias cat="bat"

function gdiff
    # Change to the project root directory
    set project_root (git rev-parse --show-toplevel)
    cd $project_root

    # Use fzf to select files and show diffs
    git diff --name-only | fzf --multi --ansi --preview-window right:70% --preview "git diff --color=always -- {}" --bind "ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down"

    # Return to the previous directory
    # cd -
end

# Custom error message on bad command 
function fish_command_not_found
    # __fish_default_command_not_found_handler $argv
    command_not_found # Our custom function 
    # echo Fish: Unknown command: $argv
end
