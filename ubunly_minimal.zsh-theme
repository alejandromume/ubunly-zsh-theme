PROMPT=$'%F{#5AB8A9}┌──${debian_chroot:+($debian_chroot)──}(%B%F{#257DDD}%n%(#.💀.㉿)%m%b%F{#5AB8A9})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{#5AB8A9}]\n└─%B%(#.%F{#257DDD}λ.%F{reset}λ)%b%F{reset} '

new_line_before_prompt=yes

precmd() {
    # Print the previously configured title
    print -Pn "$TERM_TITLE"

    # Print a new line before the prompt, but only if it is not the first line
    if [ "$new_line_before_prompt" = yes ]; then
        if [ -z "$_NEW_LINE_BEFORE_PROMPT" ]; then
            _NEW_LINE_BEFORE_PROMPT=1
        else
            print ""
        fi
    fi
}