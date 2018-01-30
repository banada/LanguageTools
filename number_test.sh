#!/bin/bash

NUMBER=$(( $RANDOM ));
# For a limited range of numbers:
# NUMBER=$(( $RANDOM%10 ));
# NUMBER=$(( $RANDOM%1000 ));
mplayer "http://translate.google.com/translate_tts?ie=UTF-8&tl=ko&client=tw-ob&q=$NUMBER" &> /dev/null
read NUMBER_IN;
if [ $NUMBER_IN -eq $NUMBER ]; then
    echo "Correct";
else
    echo "Wrong, the answer is: $NUMBER";
fi;
