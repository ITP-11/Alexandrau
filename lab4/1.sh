#!/bin/bash	
str=""
while test "$str" != "5"
do
echo "---- MENU ----"
echo "1. Information about the author"
echo "2. Calculate the mathematical expression"
echo "3. Copying files with your extension to the folder <<BackUp>>"
echo "4. Enter an username and check it"
echo "5. Exit"
echo "--------------"
echo -n "Chose a menu item:"
read str
if test $str = "1"
then
echo "Alexanrau Alexandr, ITP-11"
fi
if test $str = "2"
then
echo -n "Enter your number in the class register:"
read n
echo -n "Enter a number of your computer:"
read nc
echo -n "Enter your age:"
read a
x=$(( ($n + $nc) * $a ))
echo "Result of the expression (n + nc) * a is $x" 
fi
if test $str = "3"
then
echo -n "Enter file name:"
read ext
echo -n "Enter file location:"
read loc
if [ -d $loc/$ext ]
then
echo "dir is exist."
else
echo "making a new dir" > $loc/$ext
fi
fi
if test $str = "4"
then
echo -n "Enter file extension:"
read ext
echo -n "Enter file location:"
read loc
if [ -e $loc/*.$ext ]
then
rm *.$ext 
else
zip –r archive.zip $loc
echo "making archive"
fi
fi
done
