#! /bin/sh

test -n "${DISPLAY}" && test -n "${XAUTHORITY}" && mono /opt/TzForFreeRTOS-3.1.3/TzForFreeRTOS.exe

cat << 'EOF'
please run:

docker run --rm -u $(id -u) -v /tmp:/tmp -e DISPLAY=$DISPLAY -e XAUTHORITY=/tmp/.Xauthority -v ${XAUTHORITY}:/tmp/.Xauthority -e HOME=$HOME -v $HOME/.config/"Tracealyzer for FreeRTOS Data":$HOME/.config/"Tracealyzer for FreeRTOS Data" philmd/tracealyzer:3.1.3

HINT: add an alias in your ~/.bashrc:

alias tracealyzer='docker run --rm -u $(id -u) -v /tmp:/tmp -e DISPLAY=$DISPLAY -e XAUTHORITY=/tmp/.Xauthority -v ${XAUTHORITY}:/tmp/.Xauthority -e HOME=$HOME -v $HOME/.config/"Tracealyzer for FreeRTOS Data":$HOME/.config/"Tracealyzer for FreeRTOS Data" philmd/tracealyzer:3.1.3'

EOF

exit 1
