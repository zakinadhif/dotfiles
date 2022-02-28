#!/bin/sh

case "$1" in
    all_save)
        maim $(xdg-user-dir PICTURES)/$(date +%Y-%m-%d-%s_screenshot.jpg)
        dunstify "Screenshot has been saved to `xdg-user-dir PICTURES`"
        ;;
    window_save)
        maim -st 9999999 $(xdg-user-dir PICTURES)/$(date +%Y-%m-%d-%s_screenshot_window.jpg)
        dunstify "Screenshot has been saved to `xdg-user-dir PICTURES`"
        ;;
    window_save_fancy)
        dunstify "Screenshot has been saved to `xdg-user-dir PICTURES`"
        maim -st 9999999 | convert - \( +clone -background black -shadow 80x3+5+5 \) +swap -background none -layers merge +repage $(xdg-user-dir PICTURES)/$(date +%Y-%m-%d-%s_screenshot_fancy.jpg)
        ;;
    selection_save)
        dunstify "Selection will be saved to `xdg-user-dir PICTURES`"
        maim -s $(xdg-user-dir PICTURES)/$(date +%Y-%m-%d-%s_screenshot_selection.jpg)
        ;;
    selection_copy)
        dunstify 'Selection will be copied into clipboard'
        maim -s | xclip -selection clipboard -t image/png
        ;;
    *)
        echo "Usage: $0 {all_save|selection_save|window_save|all_copy|selection_copy|window_copy}"
        exit 2
esac

exit 0
