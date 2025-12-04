function common_path
    set components1 (echo $argv[1] | tr '/' '\n' | grep -v '^$')
    set components2 (echo $argv[2] | tr '/' '\n' | grep -v '^$')

    set common_base ""
    # set common_length 0

    for i in (seq (count $components1))
        if test "$components1[$i]" = "$components2[$i]"
            set common_base "$common_base/$components1[$i]"
            # set common_length (math "$common_length + 1")
        else
            break
        end
    end

    set -g COMMON_PATH_OUTPUT $common_base
end

function lfcd
    set cwd $(pwd)
    set target $(lf -print-last-dir)

    if [ $cwd = $target ]
        return 0
    end

    cd $target

    if string match -q "$cwd*" $target # /abc -> /abc/def
        set added "\033[32m$(string replace $cwd "" $target)\033"
        echo -e "$cwd$added"
    else if string match -q "$target*" $cwd # /abc/def -> /abc
        set removed "\033[31m$(string replace $target "" $cwd)\033"
        echo -e "$target$removed"
    else # /abc/def -> /ghi/jkl
        common_path $cwd $target

        set common $COMMON_PATH_OUTPUT
        set -e COMMON_PATH_OUTPUT

        echo -e "$common/\033[31m$(string replace $common/ "" $cwd)\033 -> \033[32m$(string replace $common/ "" $target)\033"
    end

end
