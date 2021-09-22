#/usr/bin/env bash

complete -W "$(\ls -1 ~/.notes)" notes

#_notes_completions() {
    #COMPREPLY=($(compgen -W "$()"))
#}

#complete -F _notes_completions notes
