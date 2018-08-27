echo "Enter the string"
read var2

case $var2 in 
    [hH] [eE] [lL] [lL] [oO])
          echo "hello found"
          ;;
    *[bB][yY][eE])
          echo "bye found"
          ;;
    *)
      echo "nothing found"
          ;;
esac
echo "Enter a number"
read var3

if [[ $var3 -ge 1 && $var -le 9]];then
      echo "1 to 9"
elif [[$var3 -ge 10 && $var3 -le 19]];then
      echo "10 to 19"
elif [[$var3 -gt 19 || $var3==0]];then
      echo "greater than 19 or equal to 0"
else
      echo "other range"
fi

