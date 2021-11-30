search=$1
file="DB.txt"



cnt=`echo ${#search}`
cnt=$(($cnt + 1))

while read line;
do
    name=`echo $line | cut -d' ' -f 1`
    number=`echo $line | cut -d' ' -f 2`

    i=1
    check=1
    while [ $i -ne $cnt ]
    do
    	word1=`echo $name | cut -c $i`
    	word2=`echo $search | cut -c $i`
    	if [ $word1 != $word2 ]; then
    		check=0
    	fi
    	i=$(($i + 1))
    done
    	
    if [ $check -eq 1 ]; then
    	echo $number
    	break
    fi
    
done < $file
