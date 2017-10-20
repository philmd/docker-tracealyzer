#! /bin/sh

test -n "${DISPLAY}" && test -n "${XAUTHORITY}" && ${MONO:-mono} /opt/TzForFreeRTOS-${TRACEALIZER_VERSION}/TzForFreeRTOS.exe; exit $?

REPO_TAG="${REPO_NAME:-philmd/tracealyzer}:${TRACEALIZER_VERSION}"

sed "s@REPO_TAG@${REPO_TAG}@g" << 'EOF'
please run:

docker run --rm -u $(id -u) -v /tmp:/tmp -e DISPLAY=$DISPLAY -e XAUTHORITY=/tmp/.Xauthority -v ${XAUTHORITY}:/tmp/.Xauthority -e HOME=$HOME -v $HOME/.config/"Tracealyzer for FreeRTOS Data":$HOME/.config/"Tracealyzer for FreeRTOS Data" REPO_TAG

HINT: add an alias in your ~/.bashrc:

alias tracealyzer='docker run --rm -u $(id -u) -v /tmp:/tmp -e DISPLAY=$DISPLAY -e XAUTHORITY=/tmp/.Xauthority -v ${XAUTHORITY}:/tmp/.Xauthority -e HOME=$HOME -v $HOME/.config/"Tracealyzer for FreeRTOS Data":$HOME/.config/"Tracealyzer for FreeRTOS Data" REPO_TAG'

EOF

exit 1
