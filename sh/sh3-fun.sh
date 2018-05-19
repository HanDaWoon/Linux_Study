function add() {
	echo `expr $1 + $2`;
}

function hello() {
	echo Hello World! $*;
}

add 100 200
hello 1 2 3
add 300 500
hello a b c d e f
