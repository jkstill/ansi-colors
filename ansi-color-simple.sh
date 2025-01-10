#!/usr/bin/env bash

# simple use of ansi color codes in bash

# Foreground and Background ANSI Codes
declare -A ansiCodes

ansiCodes[defaultFG]="\e[39m"
ansiCodes[blackFG]="\e[30m"
ansiCodes[redFG]="\e[31m"
ansiCodes[greenFG]="\e[32m"
ansiCodes[yellowFG]="\e[33m"
ansiCodes[blueFG]="\e[34m"
ansiCodes[magentaFG]="\e[35m"
ansiCodes[cyanFG]="\e[36m"
ansiCodes[lightGrayFG]="\e[37m"
ansiCodes[darkGrayFG]="\e[90m"
ansiCodes[lightRedFG]="\e[91m"
ansiCodes[lightGreenFG]="\e[92m"
ansiCodes[lightYellowFG]="\e[93m"
ansiCodes[lightBlueFG]="\e[94m"
ansiCodes[lightMagentaFG]="\e[95m"
ansiCodes[lightCyanFG]="\e[96m"
ansiCodes[whiteFG]="\e[97m"

ansiCodes[defaultBG]="\e[49m"
ansiCodes[blackBG]="\e[40m"
ansiCodes[redBG]="\e[41m"
ansiCodes[greenBG]="\e[42m"
ansiCodes[yellowBG]="\e[43m"
ansiCodes[blueBG]="\e[44m"
ansiCodes[magentaBG]="\e[45m"
ansiCodes[cyanBG]="\e[46m"
ansiCodes[lightGrayBG]="\e[47m"
ansiCodes[darkGrayBG]="\e[100m"
ansiCodes[lightRedBG]="\e[101m"
ansiCodes[lightGreenBG]="\e[102m"
ansiCodes[lightYellowBG]="\e[103m"
ansiCodes[lightBlueBG]="\e[104m"
ansiCodes[lightMagentaBG]="\e[105m"
ansiCodes[lightCyanBG]="\e[106m"
ansiCodes[whiteBG]="\e[107m"

# Variables for Warning and Success Messages
bgErr=${ansiCodes[blackBG]}
fgErr=${ansiCodes[redFG]}
bgSuccess=${ansiCodes[blackBG]}
fgSuccess=${ansiCodes[cyanFG]}
bgStandard=${ansiCodes[defaultBG]}
fgStandard=${ansiCodes[defaultFG]}

# Functions

setStdColors() {
  printf "${bgStandard}${fgStandard}"
}

warning() {
  printf "${bgErr}${fgErr}%s${bgStandard}${fgStandard}\n" "$@"
  setStdColors
}

message() {
  printf "${bgSuccess}${fgSuccess}%s${bgStandard}${fgStandard}\n" "$@"
  setStdColors 
}

output() {
  setStdColors
  printf "${bgStandard}${fgStandard}%s${bgStandard}${fgStandard}\n" "$@"
  setStdColors
}


# note some terminals work differently with the ANSI codes than others
# use output() rather than echo or printf when just printing text to maintain consistent colors
# on mobaxterm the colors are acting strangely
# ok = cyan
# done = purple?
# finished = default color

warning "This is a warning message"
message "This is a message"
output "ok"
output "done"
output "finished"

