#!/bin/bash

ColorChange() {
rivalcfg --left-strip-top-color $HexColor
rivalcfg --left-strip-middle-color $HexColor
rivalcfg --left-strip-bottom-color $HexColor
rivalcfg --right-strip-top-color $HexColor
rivalcfg --right-strip-middle-color $HexColor 
rivalcfg --right-strip-bottom-color $HexColor
rivalcfg -c $HexColor
rivalcfg -C $HexColor
ckb-next -m $CKBName &> /dev/null
}

Dialog=$(kdialog --title " RGB Switcher " --geometry 400X100 --combobox "Select RGB configuration" "Red" "Blue" "Blue V2" "Orange" "Green" "White" "Yellow")

if [[ $Dialog == "Blue" ]]; then
	HexColor=blue
	CKBName=BLUE
fi
if [[ $Dialog == "Blue V2" ]]; then
	HexColor=00AAFF
	CKBName=BLUEv2
fi
if [[ $Dialog == "Green" ]]; then
	HexColor=green
	CKBName=GREEN
fi
if [[ $Dialog == "Orange" ]]; then
	HexColor=ff5500
	CKBName=ORANGE
fi
if [[ $Dialog == "Purple" ]]; then
	HexColor=ff00ff
	CKBName=PURPLE
fi
if [[ $Dialog == "Red" ]]; then
	HexColor=red
	CKBName=RED
fi
if [[ $Dialog == "White" ]]; then
	HexColor=white
	CKBName=WHITE
fi
if [[ $Dialog == "Yellow" ]]; then
	HexColor=ffff00
	CKBName=YELLOW
fi

ColorChange


