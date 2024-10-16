###：expr 命令

#!/usr/bin/env bash

x=10
if [[ -n $1 ]]; then
	x=$1
fi

y=20
if [[ -n $2 ]]; then
	y=$2
fi

echo "x=${x}, y=${y}"

val=`expr ${x} + ${y}`
echo "${x} + ${y} = $val"

val=`expr ${x} - ${y}`
echo "${x} - ${y} = $val"

val=`expr ${x} \* ${y}`
echo "${x} * ${y} = $val"

val=`expr ${y} / ${x}`
echo "${y} / ${x} = $val"

val=`expr ${y} % ${x}`
echo "${y} % ${x} = $val"

if [[ ${x} == ${y} ]]; then
	echo "${x} = ${y}"
fi
if [[ ${x} != ${y} ]]; then
	echo "${x} != ${y}"
fi

#  Execute: ./算术运算符.sh
#  Output:
#  x=10, y=20
#  10 + 20 = 30
#  10 - 20 = -10
#  10 * 20 = 200
#  20 / 10 = 2
#  20 % 10 = 0
#  10 != 20

#  Execute: ./算术运算符.sh 10 30
#  Output:
#  x=10, y=30
#  10 + 30 = 40
#  10 - 30 = -20
#  10 * 30 = 300
#  30 / 10 = 3
#  30 % 10 = 0
#  10 不等于 30


###：使用双括号 (( ))
#!/bin/bash

x=10
if [[ -n $1 ]]; then
	x=$1
fi

y=20
if [[ -n $2 ]]; then
	y=$2
fi

result=$(($x + $y));echo "$result"
result=$(($x - $y));echo "$result"
result=$(($x * $y));echo "$result"
result=$(($x / $y));echo "$result"
result=$(($x % $y));echo "$result"



###：使用 bc 命令,可以处理浮点运算;
#!/bin/bash

x=10
if [[ -n $1 ]]; then
	x=$1
fi

y=20
if [[ -n $2 ]]; then
	y=$2
fi

result=$(echo "$x + $y" | bc);echo "$result"
result=$(echo "$x - $y" | bc);echo "$result"
result=$(echo "$x * $y" | bc);echo "$result"
result=$(echo "$x / $y" | bc);echo "$result"
result=$(echo "$x % $y" | bc);echo "$result"

###：使用 let 命令
#!/bin/bash

x=10
if [[ -n $1 ]]; then
	x=$1
fi

y=20
if [[ -n $2 ]]; then
	y=$2
fi

let result=$x+$y; echo "$result"  #注意：$x+$y，在算术运算符左右，不能出现空格，否则会出错；
let result=$x-$y; echo "$result"
let result=$x*$y; echo "$result"
let result=$x/$y; echo "$result"
let result=$x%$y; echo "$result"









