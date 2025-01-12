if status is-interactive
    # Commands to run in interactive sessions can go here
    . /usr/share/autojump/autojump.fish
end

function fish_prompt
    printf '%s%s%s%s%s%s   %s %s%s%s ' (set_color -b red) (set_color black) " Belloc " (set_color red) (set_color -b cyan) (set_color black) (prompt_pwd) (set_color -b normal) (set_color cyan) (set_color normal)
end

function fish_right_prompt -d "Write out the right prompt"
    printf '%s%s%s %s%s%s%s' (set_color magenta) (set_color -b magenta) (set_color black) (date '+%d/%m') (echo " 󰃭  ") (set_color normal) (set_color -b normal)
end

function fish_greeting
end
