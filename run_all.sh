#!/bin/bash
# echo "Today is " `date`

# event=Today
# echo "$event is  `date` "

# echo -e "\nenter the path to directory"
# read the_path

# echo -e "\nyou path has the following files and folders: "
# ls $the_path

addition() {
        local num1=$1
        local num2=$2
        sum=$(( $num1 + $num2 ))  

        echo “Sum of $num1 and $num2 is $sum ”
    }

addition 12 13