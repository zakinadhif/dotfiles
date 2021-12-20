#!/bin/sh

case "$1" in
    all_save)
        scrot '%Y-%m-%d-%s_screenshot_$wx$h.jpg' -e 'mv $f $$(xdg-user-dir PICTURES)'
        dunstify "Screenshot has been saved to `xdg-user-dir PICTURES`"
        ;;
    window_save)
        scrot '%Y-%m-%d-%s_screenshot_$wx$h.jpg' -u -e 'mv $f $$(xdg-user-dir PICTURES)'
        dunstify "Screenshot has been saved to `xdg-user-dir PICTURES`"
        ;;
    selection_save)
        dunstify "Selection will be saved to `xdg-user-dir PICTURES`"
        scrot '%Y-%m-%d-%s_screenshot_$wx$h.jpg' -s -e 'mv $f $$(xdg-user-dir PICTURES)'
        ;;
    selection_copy)
        dunstify 'Selection will be saved to /tmp/tmp_scrot'
        scrot -s -e 'mv $f /tmp/tmp_scrot && xclip -selection clipboard -t image/png -i /tmp/tmp_scrot'
        ;;
    *)
        echo "Usage: $0 {all_save|selection_save|window_save|all_copy|selection_copy|window_copy}"
        exit 2
esac

exit 0
