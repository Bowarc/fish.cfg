#####################################
#       Environment variables       #
#####################################

# Add paths to $PATH if they are not yet in it
set -l paths $HOME/.local/bin $HOME/.cargo/bin

for path in $paths
    if contains $path $PATH
        continue
    end

    set -agx PATH $path
    # echo $path
end

# Android dev
set -x ANDROID_HOME ~/.android/sdk
set -x NDK_HOME ~/.android/sdk/ndk/29.0.14206865
set -x JAVA_HOME /usr/lib/jvm/jre

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
oh-my-posh init fish --config ~/.config/oh-my-posh/10k.omp.toml | source

#####################################
#          General aliases          #
#####################################

alias cls=clear
alias ls="eza -las type"
alias cat="bat"
alias clls="cls && ls"
alias cd=z

alias gcd="cd $(git rev-parse --show-toplevel)"
alias lazypodman='DOCKER_HOST=unix:///run/user/1000/podman/podman.sock lazydocker'

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
