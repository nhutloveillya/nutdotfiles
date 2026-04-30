source /usr/share/cachyos-fish-config/cachyos-config.fish
set -x LANG en_US.UTF-8
# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
if status is-login
    set -Ux GTK_IM_MODULE fcitx
    set -Ux QT_IM_MODULE fcitx
    set -Ux XMODIFIERS @im=fcitx
    set -Ux SDL_IM_MODULE fcitx
    set -Ux GLFW_IM_MODULE ibus
end
