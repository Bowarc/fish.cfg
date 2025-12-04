function gcd
    set root $(git rev-parse --show-toplevel)
    echo -e "$root/\033[31m$(string replace $root"/" "" $(pwd))/\033"
    cd $root
end
