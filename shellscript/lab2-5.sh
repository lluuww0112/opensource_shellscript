activate_command(){
    echo "함수 안으로 들어 왔음"
    local var=$1
    if [ -z "$var" ];then
        ls
    else
        ls $var
    fi
}

echo "프고그램을 시작합니다."
var=$1
activate_command $var
echo "프로그램을 종료합니다."
