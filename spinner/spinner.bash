# @description Creates new spinner coprocess. Spinner is inactive until
# `progressbar:spinner:spin()` is called.
#
# @arg $1 var Variable name to save ID reference to spinner.
progressbar:spinner:new() {
    local _progress_proc_var=$1

    coproc:run $_progress_proc_var _progressbar_spinner_loop
}

# @description Consume stdin and display spinner, rotated per each line.
# Untouched stdin will be printed out back on stdout.
#
# @arg $1 id Spinner ID reference.
# @stdout Untouched stdin.
progressbar:spinner:spin() {
    local spinner=$1
    local stdin
    local pid
    coproc:get-stdin-fd "$spinner" stdin
    coproc:get-stdout-only "$spinner" >&2 &
    coproc:get-pid "$spinner" pid
    tee /proc/$pid/fd/0
    kill -PIPE $!
    coproc:close-fd stdin
}

_progressbar_spinner_loop() {
    local indicator='|/-\'
    local position=0
    local sign

    while read line; do
        sign=${indicator:$position:1}
        echo -en "  ${sign/\\/\\\\}\\b\\b\\b"
        position=$(( ($position + 1) % ${#indicator} ))
    done
}
