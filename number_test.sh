#!/bin/bash

# number_test.sh
#
# Practice numbers in another language
#
# Usage:
#   ./number_test.sh <language>
#
# Languages:
#   ko: Korean
#   zh: Chinese

LANGUAGE=$1
NUMBER=$(( $RANDOM ));
# For a limited range of numbers:
# NUMBER=$(( $RANDOM%10 ));
# NUMBER=$(( $RANDOM%1000 ));

echo "";
echo "###################";
echo "##  Number Test  ##";
echo "###################";
echo "";
echo "Type the number that you hear:";
echo "";

mplayer "http://translate.google.com/translate_tts?ie=UTF-8&tl=$LANGUAGE&client=tw-ob&q=$NUMBER" &> /dev/null

read NUMBER_IN;
if [ $NUMBER_IN -eq $NUMBER ]; then
    echo "Correct";
else
    echo "Wrong, the answer is: $NUMBER";
fi;
