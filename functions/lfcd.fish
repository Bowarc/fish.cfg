function lfcd
    set cwd $(pwd)
    set d $(lf -print-last-dir)
    echo $cwd"/" "→" $(string replace $(echo $cwd"/") "" $d)"/"
    cd $d

    # set -e d # Not needed since variables are scoped (use -g to make them global)
end
