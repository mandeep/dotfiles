# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/mandeep/.oh-my-zsh

# Settings for virtualenvwrapper
export WORKON_HOME=/home/mandeep/.virtualenvs/
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh


# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/
plugins=(
    cargo
    git
    pip
    zsh-autosuggestions
    virtualenvwrapper
)

source $ZSH/oh-my-zsh.sh

alias vim=nvim
alias open=xdg-open

# Source vte.sh for Tilix compatibility
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte-2.91.sh
fi

# Source zsh-syntax-highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Source racer autocompletion tool for Rust
export RUST_SRC_PATH=/home/mandeep/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src

# Set editor environment variable so that git uses nvim as default editor
export EDITOR=nvim
