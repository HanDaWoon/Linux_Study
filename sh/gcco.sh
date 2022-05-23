function gcco {
    target=$1
    if [ $2 ]
    then
        gcc -o ${target%.c} $target && ./${target%.c} $2 && rm ${target%.c}
    elif [ $3 ]
    then
        gcc -o ${target%.c} $target && ./${target%.c} $2 $3 && rm ${target%.c}
    else
        gcc -o ${target%.c} $target && ./${target%.c} && rm ${target%.c}
    fi
}
