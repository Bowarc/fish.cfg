function fish_command_not_found

    set messages {
"Boooo!",
"Don't you know anything?",
"RTFM!",
"Hahaha, n00b!",
"Wow! That was impressively wrong!",
"He said: $argv :D",
"What are you doing??",
"Pathetic",
"...and this is the best you can do??",
"The worst one today!",
"n00b alert!",
"Your application for reduced salary has been sent!",
"lol",
"u suk",
"lol... plz",
"plz uninstall",
"And the Darwin Award goes to.... $USER!",
"ERROR_INCOMPETENT_USER",
"Incompetence is also competence",
"Bad.",
"Fake it till you make it!",
"What is this...? $argv? Amateur hour!?",
"Come on! You can do it!",
"Nice try.",
"What if... you type an actual command the next time!",
"What if I told you... it is possible to type valid commands.",
"Y u no speak computer???",
"This is not Mac",
"Perhaps you should leave the command line alone...",
"Please step away from the keyboard!",
"error code: 1D10T",
"ACHTUNG! ALLES TURISTEN UND NONTEKNISCHEN LOOKENPEEPERS! DAS KOMPUTERMASCHINE IST NICHT FÜR DER GEFINGERPOKEN UND MITTENGRABEN! ODERWISE IST EASY TO SCHNAPPEN DER SPRINGENWERK, BLOWENFUSEN UND POPPENCORKEN MIT SPITZENSPARKEN. IST NICHT FÜR GEWERKEN BEI DUMMKOPFEN. DER RUBBERNECKEN SIGHTSEEREN KEEPEN DAS COTTONPICKEN HÄNDER IN DAS POCKETS MUSS. ZO RELAXEN UND WATSCHEN DER BLINKENLICHTEN.",
"Pro tip: type a valid command!"
}
    set_color red
    echo \r(random choice $messages)
    set_color normal
end
