# Self-contained prompt configuration
# Style: Two-row framed prompt with box-drawing characters
# Colors: Cyan frame, green/red exit code

# Mostly used for devices that don't have zsh available, such as embedded
# devices
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

__prompt_command() {
    local exit_code=$?

    # Colors
    local cyan='\033[36m'
    local green='\033[32m'
    local red='\033[31m'
    local yellow='\033[33m'
    local magenta='\033[35m'
    local reset='\033[0m'

    # Components
    local user_host="${USER}@${HOSTNAME%%.*}"
    local dir="${PWD/#$HOME/\~}"
    local time_now
    time_now=$(date +%T)

    # Connection type detection
    local conn_prefix=""
    local conn_prefix_visible=""
    if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
        conn_prefix="─[ ${yellow}SSH${cyan} ]"
        conn_prefix_visible="─[ SSH ]"
    else
        local current_tty
        current_tty=$(tty 2>/dev/null)
        case "$current_tty" in
            /dev/ttyS*|/dev/ttyUSB*|/dev/ttyACM*|/dev/ttymxc*)
                conn_prefix="─[ ${magenta}SERIAL${cyan} ]"
                conn_prefix_visible="─[ SERIAL ]"
                ;;
        esac
    fi

    # Exit code with color
    local exit_color
    if [ $exit_code -eq 0 ]; then
        exit_color="${green}"
    else
        exit_color="${red}"
    fi

    # Build left and right sections (without fill)
    local left="${conn_prefix}─[ ${dir} ]─"
    local right="─[ ${exit_color}${exit_code}${cyan} ]──[ ${user_host} ]──[ ${time_now} ]─"

    # Calculate visible lengths (strip ANSI escapes for counting)
    local left_visible="${conn_prefix_visible}─[ ${dir} ]─"
    local right_visible="─[ ${exit_code} ]──[ ${user_host} ]──[ ${time_now} ]─"

    # +2 for the corner characters ┌ and ┐
    local used=$(( ${#left_visible} + ${#right_visible} + 2 ))
    local fill_len=$(( COLUMNS - used ))
    if [ $fill_len -lt 0 ]; then
        fill_len=0
    fi

    # Build the fill bar
    local fill=""
    local i
    for (( i = 0; i < fill_len; i++ )); do
        fill="${fill}─"
    done

    # Assemble prompt
    PS1="${cyan}┌${left}${fill}${right}─${reset}\n${cyan}└─>${reset} "
}

PROMPT_COMMAND=__prompt_command
