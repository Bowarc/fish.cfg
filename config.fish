#####################################
#       Environment variables       #
#####################################

# Add paths to $PATH if they are not yet in it
set -l paths $HOME/.local/bin $HOME/bin $HOME/.cargo/bin $HOME/go/bin $HOME/.npm/node_modules/bin

for path in $paths
    if contains $path $PATH
        continue
    end

    set -agx PATH $path
    # echo $path
end

set -gx EDITOR /usr/bin/hx

# Rust backtrace, Not sure what to use
# set -gx RUST_BACKTRACE full
set -gx RUST_BACKTRACE 1

# Remove fish hello message 
set -gx fish_greeting

#####################################
#             App init              #
#####################################

# Initialize the z command
zoxide init fish | source

# Init oh my posh
oh-my-posh init fish --config ~/.config/oh-my-posh/10k.omp.json | source

#####################################
#          General aliases          #
#####################################

alias ls="eza -las type"
alias cat="bat"

#####################################
#          Flatpak aliases          #
#####################################

alias osu="flatpak run sh.ppy.osu"
alias easyeffects="flatpak run com.github.wwmm.easyeffects"
alias spotube="flatpak run com.github.KRTirtho.Spotube"
alias obs="flatpak run com.obsproject.Studio"

#####################################
#              Keybinds             #
#####################################

# Bind escape to clear the current command
bind \e 'commandline ""'
# Bind ctrl delete to remove everything past the cursor
bind \e\[3\;5~ kill-word


#####################################
#              Startup              # 
#####################################
