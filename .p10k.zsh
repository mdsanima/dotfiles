# Copyright © 2023 MDSANIMA

# Removed all unused command and help comment on this config file.
# Type `p10k configure` to generate new config.

#########################[ temporarily change options ]#########################
'builtin' 'local' '-a' 'p10k_config_opts'
[[ ! -o 'aliases'         ]] || p10k_config_opts+=('aliases')
[[ ! -o 'sh_glob'         ]] || p10k_config_opts+=('sh_glob')
[[ ! -o 'no_brace_expand' ]] || p10k_config_opts+=('no_brace_expand')
'builtin' 'setopt' 'no_aliases' 'no_sh_glob' 'brace_expand'

##########################[ zsh prompt style options ]##########################
() {
    emulate -L zsh -o extended_glob
    unset -m '(POWERLEVEL9K_*|DEFAULT_USER)~POWERLEVEL9K_GITSTATUS_DIR'
    autoload -Uz is-at-least && is-at-least 5.1 || return

    ###########################[ lines: prompt left ]###########################
    typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
        # ==============================[ line 1 ]==============================
        os_icon                 # os identifier
        context                 # user@hostname
        dir                     # current directory
        vcs                     # git status
        # ==============================[ line 2 ]==============================
        newline                 # \n
        prompt_char             # prompt symbol
    )

    ##########################[ lines: prompt right ]###########################
    typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
        # ==============================[ line 1 ]==============================
        status                  # exit code of the last command
        background_jobs         # presence of background jobs
        virtualenv              # python virtual environment
        package                 # name@version from package.json
        node_version            # node.js version
        command_execution_time  # duration of the last command
        time                    # current time
        # ==============================[ line 2 ]==============================
        newline
    )

    ############################[ config: setting ]#############################
    typeset -g POWERLEVEL9K_MODE=nerdfont-complete
    typeset -g POWERLEVEL9K_ICON_PADDING=none
    typeset -g POWERLEVEL9K_BACKGROUND=
    typeset -g POWERLEVEL9K_ICON_BEFORE_CONTENT=
    typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=false
    typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=
    typeset -g POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX=
    typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=
    typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_SUFFIX=
    typeset -g POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_SUFFIX=
    typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_SUFFIX=
    typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_CHAR=' '
    typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_BACKGROUND=
    typeset -g POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_GAP_BACKGROUND=
    if [[ $POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_CHAR != ' ' ]]; then
        typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_FOREGROUND=242
        typeset -g POWERLEVEL9K_EMPTY_LINE_LEFT_PROMPT_FIRST_SEGMENT_END_SYMBOL='%{%}'
        typeset -g POWERLEVEL9K_EMPTY_LINE_RIGHT_PROMPT_FIRST_SEGMENT_START_SYMBOL='%{%}'
    fi
    typeset -g POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0B0'
    typeset -g POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='\uE0B1'
    typeset -g POWERLEVEL9K_LEFT_PROMPT_FIRST_SEGMENT_START_SYMBOL=''
    typeset -g POWERLEVEL9K_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL='\uE0B0'
    typeset -g POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='❮'
    typeset -g POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='❮'
    typeset -g POWERLEVEL9K_RIGHT_PROMPT_FIRST_SEGMENT_START_SYMBOL=''
    typeset -g POWERLEVEL9K_RIGHT_PROMPT_LAST_SEGMENT_END_SYMBOL=''
    typeset -g POWERLEVEL9K_EMPTY_LINE_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL=

    #########################[ os_icon: os identifier ]#########################
    typeset -g POWERLEVEL9K_OS_ICON_FOREGROUND=232
    typeset -g POWERLEVEL9K_OS_ICON_BACKGROUND=208
    typeset -g POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION='📡'

    #########################[ context: user@hostname ]#########################
    typeset -g POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND=1
    typeset -g POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND=234
    typeset -g POWERLEVEL9K_CONTEXT_{REMOTE,REMOTE_SUDO}_FOREGROUND=180
    typeset -g POWERLEVEL9K_CONTEXT_{REMOTE,REMOTE_SUDO}_BACKGROUND=234
    typeset -g POWERLEVEL9K_CONTEXT_FOREGROUND=180
    typeset -g POWERLEVEL9K_CONTEXT_BACKGROUND=234
    typeset -g POWERLEVEL9K_CONTEXT_ROOT_TEMPLATE='%n💻%m'
    typeset -g POWERLEVEL9K_CONTEXT_{REMOTE,REMOTE_SUDO}_TEMPLATE='%n💻%m'
    typeset -g POWERLEVEL9K_CONTEXT_TEMPLATE='%n💻%m'

    #########################[ dir: current directory ]#########################
    typeset -g POWERLEVEL9K_DIR_FOREGROUND=232
    typeset -g POWERLEVEL9K_DIR_BACKGROUND=38
    typeset -g POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_unique
    typeset -g POWERLEVEL9K_SHORTEN_DELIMITER=
    typeset -g POWERLEVEL9K_DIR_SHORTENED_FOREGROUND=233
    typeset -g POWERLEVEL9K_DIR_ANCHOR_FOREGROUND=232
    typeset -g POWERLEVEL9K_DIR_ANCHOR_BOLD=true
    local anchor_files=(
        .bzr
        .citc
        .git
        .hg
        .node-version
        .python-version
        .go-version
        .ruby-version
        .lua-version
        .java-version
        .perl-version
        .php-version
        .tool-version
        .shorten_folder_marker
        .svn
        .terraform
        CVS
        Cargo.toml
        composer.json
        go.mod
        package.json
        stack.yaml
    )
    typeset -g POWERLEVEL9K_SHORTEN_FOLDER_MARKER="(${(j:|:)anchor_files})"
    typeset -g POWERLEVEL9K_DIR_TRUNCATE_BEFORE_MARKER=false
    typeset -g POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
    typeset -g POWERLEVEL9K_DIR_MAX_LENGTH=80
    typeset -g POWERLEVEL9K_DIR_MIN_COMMAND_COLUMNS=40
    typeset -g POWERLEVEL9K_DIR_MIN_COMMAND_COLUMNS_PCT=50
    typeset -g POWERLEVEL9K_DIR_HYPERLINK=false
    typeset -g POWERLEVEL9K_DIR_SHOW_WRITABLE=v3
    typeset -g POWERLEVEL9K_LOCK_ICON='🔒'
    typeset -g POWERLEVEL9K_DIR_CLASSES=()
    typeset -g POWERLEVEL9K_DIR_PREFIX='💦 '

    ############################[ vcs: git status ]#############################
    typeset -g POWERLEVEL9K_VCS_BRANCH_ICON='\uE0A0 '
    typeset -g POWERLEVEL9K_VCS_UNTRACKED_ICON='?'
    typeset -g POWERLEVEL9K_VCS_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL='🦉'
    function mdsanima_git_formatter() {
        emulate -L zsh

        if [[ -n $P9K_CONTENT ]]; then
            typeset -g mdsanima_git_format=$P9K_CONTENT
            return
        fi

        if (( $1 )); then
            local       meta='%f'     # default foreground
            local      clean='%78F'   # green foreground
            local     staged='%202F'  # orange foreground
            local   modified='%220F'  # yellow foreground
            local  untracked='%39F'   # blue foreground
            local conflicted='%196F'  # red foreground
        else
            local       meta='%244F'  # grey foreground
            local      clean='%244F'  # grey foreground
            local     staged='%244F'  # grey foreground
            local   modified='%244F'  # grey foreground
            local  untracked='%244F'  # grey foreground
            local conflicted='%244F'  # grey foreground
        fi

        local res

        if [[ -n $VCS_STATUS_LOCAL_BRANCH ]]; then
            local branch=${(V)VCS_STATUS_LOCAL_BRANCH}
            (( $#branch > 32 )) && branch[13,-13]="…"
            res+="${clean}${(g::)POWERLEVEL9K_VCS_BRANCH_ICON}${branch//\%/%%}"
        fi

        if [[ -n $VCS_STATUS_TAG && -z $VCS_STATUS_LOCAL_BRANCH ]]; then
            local tag=${(V)VCS_STATUS_TAG}
            (( $#tag > 32 )) && tag[13,-13]="…"
            res+="${meta}#${clean}${tag//\%/%%}"
        fi

        [[ -z $VCS_STATUS_LOCAL_BRANCH && -z $VCS_STATUS_TAG ]] &&
            res+="${meta}@${clean}${VCS_STATUS_COMMIT[1,8]}"

        if [[ -n ${VCS_STATUS_REMOTE_BRANCH:#$VCS_STATUS_LOCAL_BRANCH} ]]; then
            res+="${meta}:${clean}${(V)VCS_STATUS_REMOTE_BRANCH//\%/%%}"
        fi

        if [[ $VCS_STATUS_COMMIT_SUMMARY == (|*[^[:alnum:]])(wip|WIP)(|[^[:alnum:]]*) ]]; then
            res+=" ${modified}wip"
        fi

        (( VCS_STATUS_COMMITS_BEHIND )) && res+=" ${clean}⇣${VCS_STATUS_COMMITS_BEHIND}"
        (( VCS_STATUS_COMMITS_AHEAD && !VCS_STATUS_COMMITS_BEHIND )) && res+=" "
        (( VCS_STATUS_COMMITS_AHEAD  )) && res+="${clean}⇡${VCS_STATUS_COMMITS_AHEAD}"
        (( VCS_STATUS_PUSH_COMMITS_BEHIND )) && res+=" ${clean}⇠${VCS_STATUS_PUSH_COMMITS_BEHIND}"
        (( VCS_STATUS_PUSH_COMMITS_AHEAD && !VCS_STATUS_PUSH_COMMITS_BEHIND )) && res+=" "
        (( VCS_STATUS_PUSH_COMMITS_AHEAD  )) && res+="${clean}⇢${VCS_STATUS_PUSH_COMMITS_AHEAD}"
        (( VCS_STATUS_STASHES        )) && res+=" ${clean}*${VCS_STATUS_STASHES}"
        [[ -n $VCS_STATUS_ACTION     ]] && res+=" ${conflicted}${VCS_STATUS_ACTION}"
        (( VCS_STATUS_NUM_CONFLICTED )) && res+=" ${conflicted}~${VCS_STATUS_NUM_CONFLICTED}"
        (( VCS_STATUS_NUM_STAGED     )) && res+=" ${staged}+${VCS_STATUS_NUM_STAGED}"
        (( VCS_STATUS_NUM_UNSTAGED   )) && res+=" ${modified}!${VCS_STATUS_NUM_UNSTAGED}"
        (( VCS_STATUS_NUM_UNTRACKED  )) && res+=" ${untracked}${(g::)POWERLEVEL9K_VCS_UNTRACKED_ICON}${VCS_STATUS_NUM_UNTRACKED}"
        (( VCS_STATUS_HAS_UNSTAGED == -1 )) && res+=" ${modified}─"

        typeset -g mdsanima_git_format=$res
    }
    functions -M mdsanima_git_formatter 2>/dev/null
    typeset -g POWERLEVEL9K_VCS_MAX_INDEX_SIZE_DIRTY=-1
    typeset -g POWERLEVEL9K_VCS_DISABLED_WORKDIR_PATTERN='~'
    typeset -g POWERLEVEL9K_VCS_DISABLE_GITSTATUS_FORMATTING=true
    typeset -g POWERLEVEL9K_VCS_CONTENT_EXPANSION='${$((mdsanima_git_formatter(1)))+${mdsanima_git_format}}'
    typeset -g POWERLEVEL9K_VCS_LOADING_CONTENT_EXPANSION='${$((mdsanima_git_formatter(0)))+${mdsanima_git_format}}'
    typeset -g POWERLEVEL9K_VCS_{STAGED,UNSTAGED,UNTRACKED,CONFLICTED,COMMITS_AHEAD,COMMITS_BEHIND}_MAX_NUM=-1
    typeset -g POWERLEVEL9K_VCS_VISUAL_IDENTIFIER_COLOR=99
    typeset -g POWERLEVEL9K_VCS_LOADING_VISUAL_IDENTIFIER_COLOR=208
    typeset -g POWERLEVEL9K_VCS_BACKENDS=(git)
    typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND=78
    typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=222
    typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=180

    #######################[ prompt_char: prompt symbol ]#######################
    typeset -g POWERLEVEL9K_PROMPT_CHAR_BACKGROUND=
    typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=44
    typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=196
    typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIINS_CONTENT_EXPANSION='❯'
    typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VICMD_CONTENT_EXPANSION='❮'
    typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIVIS_CONTENT_EXPANSION='V'
    typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIOWR_CONTENT_EXPANSION='▶'
    typeset -g POWERLEVEL9K_PROMPT_CHAR_OVERWRITE_STATE=true
    typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL=
    typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_PROMPT_FIRST_SEGMENT_START_SYMBOL=
    typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_{LEFT,RIGHT}_WHITESPACE=

    #################[ status: exit code of the last command ]##################
    typeset -g POWERLEVEL9K_STATUS_EXTENDED_STATES=true
    typeset -g POWERLEVEL9K_STATUS_OK=false
    typeset -g POWERLEVEL9K_STATUS_OK_VISUAL_IDENTIFIER_EXPANSION='✔'
    typeset -g POWERLEVEL9K_STATUS_OK_FOREGROUND=106
    typeset -g POWERLEVEL9K_STATUS_OK_BACKGROUND=
    typeset -g POWERLEVEL9K_STATUS_OK_PIPE=true
    typeset -g POWERLEVEL9K_STATUS_OK_PIPE_VISUAL_IDENTIFIER_EXPANSION='✔'
    typeset -g POWERLEVEL9K_STATUS_OK_PIPE_FOREGROUND=106
    typeset -g POWERLEVEL9K_STATUS_OK_PIPE_BACKGROUND=
    typeset -g POWERLEVEL9K_STATUS_ERROR=true
    typeset -g POWERLEVEL9K_STATUS_ERROR_VISUAL_IDENTIFIER_EXPANSION='✘'
    typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND=160
    typeset -g POWERLEVEL9K_STATUS_ERROR_BACKGROUND=
    typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL=true
    typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL_VISUAL_IDENTIFIER_EXPANSION='✘'
    typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL_FOREGROUND=160
    typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL_BACKGROUND=
    typeset -g POWERLEVEL9K_STATUS_ERROR_PIPE=true
    typeset -g POWERLEVEL9K_STATUS_ERROR_PIPE_VISUAL_IDENTIFIER_EXPANSION='✘'
    typeset -g POWERLEVEL9K_STATUS_ERROR_PIPE_FOREGROUND=160
    typeset -g POWERLEVEL9K_STATUS_ERROR_PIPE_BACKGROUND=
    typeset -g POWERLEVEL9K_STATUS_VERBOSE_SIGNAME=false

    ##############[ background_jobs: presence of background jobs ]##############
    typeset -g POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND=6
    typeset -g POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND=
    typeset -g POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE=false
    typeset -g POWERLEVEL9K_BACKGROUND_JOBS_VISUAL_IDENTIFIER_EXPANSION='🔧'

    #################[ virtualenv: python virtual environment ]#################
    typeset -g POWERLEVEL9K_VIRTUALENV_FOREGROUND=35
    typeset -g POWERLEVEL9K_VIRTUALENV_BACKGROUND=
    typeset -g POWERLEVEL9K_VIRTUALENV_SHOW_PYTHON_VERSION=true
    typeset -g POWERLEVEL9K_VIRTUALENV_SHOW_WITH_PYENV=true
    typeset -g POWERLEVEL9K_VIRTUALENV_{LEFT,RIGHT}_DELIMITER=

    ################[ package: name@version from package.json ]#################
    typeset -g POWERLEVEL9K_PACKAGE_FOREGROUND=6
    typeset -g POWERLEVEL9K_PACKAGE_BACKGROUND=

    #####################[ node_version: node.js version ]######################
    typeset -g POWERLEVEL9K_NODE_VERSION_FOREGROUND=2
    typeset -g POWERLEVEL9K_NODE_VERSION_BACKGROUND=
    typeset -g POWERLEVEL9K_NODE_VERSION_PROJECT_ONLY=true

    ##########[ command_execution_time: duration of the last command ]##########
    typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=117
    typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND=
    typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
    typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=3
    typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FORMAT='d h m s'
    typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_VISUAL_IDENTIFIER_EXPANSION=

    ###########################[ time: current time ]###########################
    typeset -g POWERLEVEL9K_TIME_FOREGROUND=39
    typeset -g POWERLEVEL9K_TIME_BACKGROUND=
    typeset -g POWERLEVEL9K_TIME_FORMAT='%D{%H:%M:%S}'
    typeset -g POWERLEVEL9K_TIME_UPDATE_ON_COMMAND=false
    typeset -g POWERLEVEL9K_TIME_VISUAL_IDENTIFIER_EXPANSION=
    typeset -g POWERLEVEL9K_EXAMPLE_FOREGROUND=3
    typeset -g POWERLEVEL9K_EXAMPLE_BACKGROUND=1
    typeset -g POWERLEVEL9K_TRANSIENT_PROMPT=same-dir
    typeset -g POWERLEVEL9K_INSTANT_PROMPT=verbose
    typeset -g POWERLEVEL9K_DISABLE_HOT_RELOAD=true

    #########################[ p10k: function reload ]##########################
    (( ! $+functions[p10k] )) || p10k reload
}

typeset -g POWERLEVEL9K_CONFIG_FILE=${${(%):-%x}:a}

(( ${#p10k_config_opts} )) && setopt ${p10k_config_opts[@]}
'builtin' 'unset' 'p10k_config_opts'
