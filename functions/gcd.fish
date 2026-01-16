function gcd
    set root $(git rev-parse --show-toplevel)

    if [ $root = $(pwd) ]
        echo "Already at root"
        return
    end

    echo -e "$root/\033[31m$(string replace $root"/" "" $(pwd))/\033"
    cd $root
end
