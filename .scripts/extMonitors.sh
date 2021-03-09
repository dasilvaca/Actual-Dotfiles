# If two monitors are present, setup tiling.
if [[ -x /usr/bin/xrandr ]]; then
    OUTPUTS=($( xrandr | grep connected | cut -f 1 -d ' '))
    if [[ ${#OUTPUTS[@]} == 2 ]]; then
        xrandr --output ${OUTPUTS[0]} --left-of ${OUTPUTS[1]}
    fi
fi
