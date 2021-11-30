make_file_folder(){
    local var=$1
    
    mkdir $var
    for i in 0 1 2 3 4
    do
        touch $var/file${i}.txt
        mkdir $var/file${i}
        ln -s $var/file${i}.txt $var/file${i}/file${i}.txt
    done
}

make_file_folder $1
