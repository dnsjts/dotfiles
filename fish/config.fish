set PATH ~/.cargo/bin /bin /sbin /usr/sbin /usr/bin $PATH
set -gx EDITOR  nvim
set -gx GPG_TTY (tty)
set -gx VISUAL  nvim

# Bob the fish theme settings
set theme_color_scheme        zenburn
set theme_display_hostname    yes
set theme_display_k8s_context yes
set theme_display_user        yes
set theme_newline_cursor      yes
set theme_show_exit_status    yes

if status --is-interactive
    abbr --add --global bx   ibmcloud
    abbr --add --global g    git
    abbr --add --global gl   git log
    abbr --add --global glp  git log --patch
    abbr --add --global gmt  git mergetool
    abbr --add --global gpf  git push --force-with-lease
    abbr --add --global gp   git push
    abbr --add --global gpm  git push origin HEAD:master
    abbr --add --global gra  git rebase --abort
    abbr --add --global grc  git rebase --continue
    abbr --add --global grhh git reset --hard HEAD
    abbr --add --global grep rg
    abbr --add --global gr   git rebase
    abbr --add --global gri  git rebase --interactive
    abbr --add --global ls   exa
    abbr --add --global r    rsync --verbose --progress --recursive -z -z
    abbr --add --global s    sudo
    abbr --add --global yeet rm

    if which sccache
        set -gx RUSTC_WRAPPER sccache
    end

    fortune | ponysay --wrap i
    thefuck --alias | source
    gpg-connect-agent updatestartuptty /bye >/dev/null

    fish_vi_key_bindings
end
