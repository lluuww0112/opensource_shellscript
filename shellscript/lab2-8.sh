file="DB.txt"
make_db(){
    if [ ! -e $file ];then
        touch DB.txt
    fi
}

make_db

name=$1
number=$2
echo $name $number >> $file

