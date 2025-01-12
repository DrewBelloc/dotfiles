if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_prompt
    printf '%s%s%s%s%s %s%s %s%s%s ' (set_color -b magenta) (set_color black) " Belloc " (set_color magenta) (set_color -b blue) \
        (set_color black) (prompt_pwd) (set_color -b normal) (set_color blue) (set_color normal)
end
