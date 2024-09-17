killall -q dunst

#source /home/samox/.config/polybar/pywalcolors.sh

# Wait until the processes have been shut down
while pgrep -u $UID -x dunst >/dev/null; do sleep 0.1; done
dunst

#dunst -conf /home/samox/.config/dunst/dunstrc \
#  -lb "${poly_bg1}" \
#  -lfr "${poly_border}" \
#  -nb "${poly_bg1}" \
#  -nfr "${poly_border}" \
#  -cb "${poly_bg1}" \
#  -cfr "${poly_border}" \
#  > /dev/null 2>&1 &
