#!/bin/sh

find ./Src/ -regex '.*\.\(h\|c\)' -not -path "*/Drivers/*" -not -path "*/DroneCAN/*" -exec clang-format-16 -i {} \;
find ./Inc/ -regex '.*\.\(h\|c\)' -not -path "*/Drivers/*" -exec clang-format-16 -i {} \;
find ./Mcu/ -regex '.*\.\(h\|c\)' -not -path "*/Drivers/*" -exec clang-format-16 -i {} \;

echo "Formatting done"
