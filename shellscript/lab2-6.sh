make_folder_file(){
    var=$1
    if [ ! -d $var ];then
        echo `mkdir $var`
        for i in 0 1 2 3 4
        do
            echo `touch $var/file${i}.txt`
        done
        
        echo `tar -cvf ${var}.tar $var`
        echo `tar -xvf ${var}.tar -C $var`
        echo `mv ${var}.tar $var/$var`
    fi
    
}

make_folder_file $1
