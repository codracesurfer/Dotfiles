# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker copybuffer zsh-syntax-highlighting zsh-autosuggestions)

# Declare the variable
typeset -A ZSH_HIGHLIGHT_STYLES

# To have paths colored instead of underlined
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

setopt autocd              # change directory just by typing its name
#setopt correct            # auto correct mistakes
setopt interactivecomments # allow comments in interactive mode
setopt magicequalsubst     # enable filename expansion for arguments of the form ‘anything=expression’
setopt nonomatch           # hide error message if there is no match for the pattern
setopt notify              # report the status of background jobs immediately
setopt numericglobsort     # sort filenames numerically when it makes sense
setopt promptsubst         # enable command substitution in prompt
setopt norcs
setopt share_history

#######################################################################
########################## CUSTOM CONFIG ##############################
#######################################################################
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export LIBGL_ALWAYS_INDIRECT=1
export DISPLAY=:0

export PWNDBG_VENV_WARNING=0 # TURN OFF PWNDBG WARNING
export ZSH_AUTOSUGGEST_MANUAL_REBIND="1" # MAKE ZSH FASTER
export rockyou=/usr/share/wordlists/rockyou.txt
export downloads='/mnt/c/Users/Mathias/Downloads/firefox'

################### ALIASES ###################
alias cpy="xclip -selection clipboard" # COPY TO CLIPBOARD
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME" # DOTFILES 
alias reload="source ~/.zshrc"
alias ..="cd .."
alias ghidra="/home/kali/software/ghidra/ghidra_11.1.2_PUBLIC/ghidraRun"
alias vol3="/home/kali/software/volatility3/vol.py"
alias vol2='docker run -v $(pwd):/ctf -it vol2'
alias bat="batcat"
alias sage="docker run -it sagemath/sagemath"
alias pwninit='mkdir GDB_LOG;pwninit --template-path /home/kali/.config/pwntemplate/template.py'
alias ida="/mnt/c/Program\ Files/IDA\ Freeware\ 8.4/ida64.exe"
alias explorer="/mnt/c/Windows/explorer.exe"

################### PATH ###################
# /home/kali/.cargo/bin:/home/kali/.local/bin:/home/kali/.cargo/bin:/home/kali/.local/bin:/home/kali/.cargo/bin:/home/kali/.local/bin:/home/kali/.cargo/bin:/home/kali/.local/bin:/home/kali/.cargo/bin:/home/kali/.local/bin:/home/kali/.cargo/bin:/home/kali/.local/bin:/home/kali/.cargo/bin:/home/kali/.local/bin:/home/kali/.cargo/bin:/home/kali/.local/bin:/home/kali/.cargo/bin:/home/kali/.local/bin:/home/kali/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/wsl/lib:/mnt/c/Program Files/Common Files/Oracle/Java/javapath:/mnt/c/Program Files (x86)/Common Files/Oracle/Java/java8path:/mnt/c/Program Files (x86)/Common Files/Oracle/Java/javapath:/mnt/c/Program Files (x86)/VMware/VMware Workstation/bin/:/mnt/c/Windows/system32:/mnt/c/Windows:/mnt/c/Windows/System32/Wbem:/mnt/c/Windows/System32/WindowsPowerShell/v1.0/:/mnt/c/Windows/System32/OpenSSH/:/mnt/c/Program Files/dotnet/:/mnt/c/Program Files (x86)/Windows Kits/10/Windows Performance Toolkit/:/mnt/c/Program Files/Git/cmd:/mnt/c/Program Files/010 Editor:/mnt/c/Program Files (x86)/Bulk Extractor 1.5.0/python:/mnt/c/Program Files (x86)/Bulk Extractor 1.5.0/32-bit:/mnt/c/Program Files (x86)/Bulk Extractor 1.5.0/64-bit:/mnt/c/ProgramData/chocolatey/bin:/mnt/c/ProgramData/chocolatey/lib/winlibs/tools/mingw64/bin:/mnt/c/Program Files/usbipd-win/:/mnt/c/Program Files/PowerShell/7/:/mnt/c/Program Files/BinDiff/bin:/mnt/c/Program Files/Docker/Docker/resources/bin:/mnt/c/Users/Mathias/AppData/Local/Programs/Python/Python311/Scripts/:/mnt/c/Users/Mathias/AppData/Local/Programs/Python/Python311/:/mnt/c/Users/Mathias/AppData/Local/Programs/Python/Python312/Scripts/:/mnt/c/Users/Mathias/AppData/Local/Programs/Python/Python312/:/mnt/c/Users/Mathias/AppData/Local/Microsoft/WindowsApps:/mnt/c/Users/Mathias/AppData/Local/Programs/Microsoft VS Code/bin:/mnt/c/Program Files (x86)/Nmap:/mnt/c/Users/Mathias/AppData/Local/Programs/oh-my-posh/bin:/mnt/c/Users/Mathias/AppData/Local/bin/NASM:/mnt/c/Users/Mathias/Documents/Software/IDAPro8.3:/mnt/c/Users/Mathias/Documents/SysinternalsSuite:/mnt/c/Users/Mathias/Documents/Software/binutils-2.28-1-mingw32-bin/bin:/mnt/c/Users/Mathias/Documents/Software/binutils-2.28-1-mingw32-bin/mingw32/bin:/mnt/c/Program Files/Git/mingw64/bin:/mnt/c/Users/Mathias/AppData/Local/GitHubDesktop/bin:/mnt/c/Users/Mathias/Documents/Software/x96dbg/release:/mnt/c/Users/Mathias/Documents/Software/Get-ZimmermanTools/tools/net6:/mnt/c/Users/Mathias/Documents/Software/Get-ZimmermanTools/tools/net6/MFTExplorer:/mnt/c/Users/Mathias/Documents/Software/Get-ZimmermanTools/tools/net6/RegistryExplorer:/mnt/c/Users/Mathias/Documents/Software/Get-ZimmermanTools/tools/net6/TimelineExplorer:/mnt/c/Users/Mathias/Documents/Software/Get-ZimmermanTools/tools/net6/ShellbagsExplorer:/mnt/c/Users/Mathias/AppData/Local/Android/Sdk/platform-tools/:/mnt/c/Users/Mathias/Documents/Software/SysinternalsSuite:/mnt/c/Users/Mathias/Documents/Software/MemProcFS:/mnt/c/Users/Mathias/.dotnet/tools:/home/kali/.dotnet/tools:/home/kali/.local/bin
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/wsl/lib"
export PATH="$PATH:/home/$USER/.local/bin"
export PATH="$PATH:/home/$USER/.cargo/bin"
export PATH="$PATH:/home/$USER/.dotnet/tools"
export PATH="$PATH:/mnt/c/Program Files/Docker/Docker/resources/bin"
export PATH="$PATH:/mnt/c/Users/Mathias/AppData/Local/Programs/Microsoft VS Code/bin"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

