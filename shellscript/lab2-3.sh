weight=$1
height=$( echo "scale=2; ${2}.0/100" |bc )  
bmi=$( echo "scale=1; ${weight}.0/(${height}*${height})" |bc )

if [ `echo "$bmi >= 18.5" | bc` -eq 1 ] && [ `echo "23.0 > $bmi" | bc` -eq 1 ];then
    echo "정상체중입니다."
elif [ `echo "$bmi < 18.5" | bc` -eq 1 ];then
    echo "저체중입니다."
else
    echo "과체중입니다."
fi
