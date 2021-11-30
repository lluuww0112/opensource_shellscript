var1=$1
var2=$2
var3=$3


if [ "$var2" = "+" ];then
	echo $(($var1 + $var3))
elif [ "$var2" = "-" ];then
	echo $(($var1 - $var3))
fi


