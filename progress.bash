if ! declare -f import:use &>/dev/null; then
    _base_dir="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"
    source $_base_dir/vendor/github.com/reconquest/import.bash/import.bash
fi

import:use "github.com/reconquest/coproc.bash"
import:include "spinner/spinner.bash"
