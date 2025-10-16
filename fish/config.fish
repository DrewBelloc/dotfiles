if status is-interactive
end

set -g fish_key_bindings fish_vi_key_bindings
set -g VIRTUAL_ENV_DISABLE_PROMPT 1

function fish_prompt
    set -l last_status $status
    set -l stat
    if test $last_status -ne 0
        set stat (set_color red)" [$last_status]"
        printf '%s%s %s %s%s%s%s %s%s%s ' (set_color -b black) (set_color white) (prompt_pwd) (set_color -b red) (set_color black) (set_color black) (echo $last_status) (set_color -b normal) (set_color red) (set_color normal)
    else
        printf '%s%s  %s %s%s%s ' (set_color -b black) (set_color white) (prompt_pwd) (set_color -b normal) (set_color black) (set_color normal)
    end
end

function fish_right_prompt
    if set -q VIRTUAL_ENV
        printf '%s%s%s  %s %s %s%s' (set_color black) (set_color blue) (set_color -b black) (set_color white) (basename $VIRTUAL_ENV) (set_color normal) (set_color -b normal)

    end
end

function fish_mode_prompt
    switch $fish_bind_mode
        case default
            printf '%s%s   %s%s' (set_color -b magenta) (set_color black) (set_color magenta) (set_color -b black)
        case insert
            printf '%s%s   %s%s' (set_color -b blue) (set_color black) (set_color blue) (set_color -b black)
        case visual
            printf '%s%s 󰊪  %s%s' (set_color -b yellow) (set_color black) (set_color yellow) (set_color -b black)
        case replace_one
            printf '%s%s 󰬳  %s%s' (set_color -b red) (set_color black) (set_color red) (set_color -b black)
    end
end

function fish_greeting
end

function fuck
    eval command sudo $history[1]
end
