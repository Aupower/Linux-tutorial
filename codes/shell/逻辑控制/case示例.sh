#!/usr/bin/env bash

echo "input param: " $1 $2 $3

x=0
if [[ -n $1 ]]; then
	x=$1
fi

oper=""
if [[ -n $2 ]]; then
	oper=$2
fi

y=0
if [[ -n $3 ]]; then
	y=$3
fi

exec
case ${oper} in
	+ | add)
		val=`expr ${x} + ${y}`
		echo "${x} + ${y} = ${val}"
	;;
	- | sub)
		val=`expr ${x} - ${y}`
		echo "${x} - ${y} = ${val}"
	;;
	* | mul)
		val=`expr ${x} \* ${y}`
		echo "${x} * ${y} = ${val}"
	;;
	/ | div)
		val=`expr ${x} / ${y}`
		echo "${x} / ${y} = ${val}"
	;;
	*)
		echo "Unknown oper!"
	;;
esac


###
###：优化一下
###
#!/bin/bash  
echo "Input parameters: $1 $2 $3"  

x=0  
oper=""  
y=0  
  
if [[ -n "$1" ]]; then  
    x="$1"  
fi  
  
if [[ -n "$2" ]]; then  
    oper="$2"  
fi  
  
if [[ -n "$3" ]]; then  
    y="$3"  
fi  
  
# 移除 exec，因为它在这里没有用途且会导致脚本错误  
# exec  
  
# 使用 case 语句处理操作符  
case "$oper" in  
    + | add)  
        val=$((x + y))  
        echo "${x} + ${y} = ${val}"  
        ;;  
    - | sub)  
        val=$((x - y))  
        echo "${x} - ${y} = ${val}"  
        ;;  
    * | mul)  
        val=$((x * y))  
        echo "${x} * ${y} = ${val}"  
        ;;  
    / | div)  
        # 检查除数是否为零  
        if [[ "$y" -eq 0 ]]; then  
            echo "Error: Division by zero!"  
        else  
            val=$((x / y))  
            echo "${x} / ${y} = ${val}"  
        fi  
        ;;  
    *)  
        echo "Unknown operator!"  
        ;;  
esac
