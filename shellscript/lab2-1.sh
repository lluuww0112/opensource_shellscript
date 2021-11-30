var=$1

while [ $var -ne 0 ]
do
	echo "hello world"
	var=$(($var-1))	
done
