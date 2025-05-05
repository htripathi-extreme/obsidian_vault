# Shell Scripting Notes

  #Shell_script #Bash

- `#!/bin/bash` -> called as shebang tells the shell to execute it via bash shell. Shebang is simply an absolute path to the bash interpreter.

- `#{text}` --> used to write single line comments.

- For writing multiline comments

```shell
<<comment
{text 1}
{text 2}
comment
```


- Print name of the script -> ` echo "$0"`

- Enable debugging in script -> `set -x` after shebang in next line.

- If We want to exit our script when a command fail -> `set -e` after shebang in next line.

- To exit the script -> `exit`

- To check status of previous command -> `$?` returns 0 if it was successful else unsuccessful.

- To sleep the script for some time , `sleep time_in_sec`

- Arguments passed to scripts

- To get no. of arguments : `$#`

- To display all arguments : `$@`

- To use or display a argument: `$1 $2`

  
  
  
  

-----------------------

### Variables

  

There are no data types in Bash, variable is capable of storing all types of values.

  

1. Assign a value.
	`country=India`


2. To access the value of varible use `$` sign.
	`echo $country`


3. read command to read the input from console in variable.
	`read country`


4. read command to read the input from console in variable with print statement.
	`read -p "your country " country`


5. constant variables.
	`readonly var_name="Hi" `   


6. To perform arthmethic operation on variables , we need to enclose them in `(( ))`
```shell
((a++))
((a=5*10))
```


------------------------

### Arrays

  

It is more similar to List in python.

  

1. To define a array -> `myArray=( 1 2 Hello "Hey man")`

2. Get a value from array -> `echo "${myArray[0]}"`

3. Access the entire array -> `echo "${myArray[*]}"`

4. Size of array -> `echo "${#myArray[*]}"`

5. Get sub-array ->

```shell
#syntax -> ${myArray[*]:start_index:lenght}

echo "${myArray[*]:1:2}"
```

6. Append to array -> `myArray+=( 5 6 7 )`

  

--------------------------

  

### Array Key-Value

  

similar to python dictionary

  

```shell
declare -A myArray

myArray=( [name]=Paul [age]=20 )

echo "${myArray[name]}"
```

  

---------------------------

  

### String Operations

  

```shell
myVar="Hello World!"

# Length of the string
length=${#myVar}

# Transform to uppercase
upper=${x^^}

# Transform to lower case
lower=${y,,}

# Replace "World" to "Buddy" in myVar
replace=${myVar/World/Buddy}

# Slice from 6th index to 11th index
slice=${myVar:6:11}
```

  

-------------------

  

### Conditional statements

  

- **AND** condtion -> `&&` , **OR** conditon -> `||`

- Logical operators

| Meaning              | symbol |
| -------------------- | ------ |
| Equal                | -eq    |
| Greaterthanorequalto | -ge    |
| Lessthanorequalto    | -le    |
| Not Equal            | -ne    |
| Greater Than         | -gt    |
| Less Than            | -lt    |

- `if [ -d folder_name]` -> If folder exists

- `if [ ! -d folder_name]` -> If folder not exists

- `if [ -f file_name]` -> If file exists

- `if [ ! -f file_name]` -> If file not exists

  
  

1. **IF-ELSE**

  

```shell
if [ $marks -gt 40 ]
then
	echo "You are PASS"

else
	echo "You are FAIL"
fi
```

  

2. **IF-ELSE-IF**

  

```shell

if [ $marks -ge 80 ]
then
	echo "First Division"

elif [ $marks -ge 60 ]
then
	echo "Second Division"
else
	echo "Fail""
fi
```

  

3. **CASE**

  

- condition then " ) " denoting that condition has ended.

- then command

- ";;" to tell that this commands have ended

- "*)" denotes any value

  

- syntax

```bash
case expression in
pattern1)
	# code to execute if expression matches pattern1
	;;
pattern2)
	# code to execute if expression matches pattern2
	;;
pattern3)
	# code to execute if expression matches pattern3
	;;
*)
	# code to execute if none of the above patterns match expression
	;;
esac
```

- example

  

```bash
echo "Hey choose an option"
echo "a = To see the current date"
echo "b = list all the files in current dir"

read choice

case $choice in
	a)
		date
		;;
	b)
		ls
		;;
	*)
		echo "Non a valid input"

esac 
```

  

-------------------------

  

### LOOPS

  

1. **FOR**

- Simple loop

```shell
# First way
for i in 1 2 3 4 5
do
	echo "Number is $i"
done

# Second way
for j in Raju Sham Baburao

# Third way , {1..2} it will generate a array from 1 to 20
for p in {1..20}
```

- Iterate values from file

```bash
items="/home/paul/file.txt"
for item in $(cat $items)
do
	echo $item
done
```

  

2. **WHILE**

- Simple loop

```shell
count=0
num=10

while [ $count -le $num ]
do
	echo "Numbers are $count"
	let count++
done
```

3. **UNTIL**

```shell
a=10
until [ $a -eq 1 ]
do
	echo $a
a=`expr $a - 1`
done
```

  
  

---------------------------

  

### Functions

  

- Simple use

```shell
function myfun() {
	echo "Hi"
}

  myfun() {
	echo "Hello"
}

##To call the function
myfun
```

  

- Function with arguments.

`$1` for first argument, `$2` for second ....

  

```bash
addition() {
local num1=$1
local num2=$2
sum=$(($num1+$num2))
echo “Sum of $num1 and $num2 is $sum ”
}

addition 12 13
```

-----------------------

  

### Special

  

- Read content from file

```shell
while read myVar
do
	echo $myVar
done < file_name

```

  

- Writing to file.

`echo "Hello world" > output.txt`
  
- Appending to file.

`echo "Hello world again !!" >> output.txt`
  

- Redirect the output of a command to any file.

`ls > files.txt`


---

### Example Script

![[run_all.sh]]