#!/bin/bash



#ECHO COMMAND
# echo Yaaa Manyang!

# VARIABLES
# Uppercase by convention 
# Letters, numbers, underscores

# NAME="jabawoki"
# echo "My name is, ${NAME}"


#USER INPUT
# read -p "Enter your name: " NAME
# echo "Hello $NAME, nice to meet you!"


#SIMPLE IF STATEMENT
# if [ "${NAME}" == "Daniel" ]
# then
# echo "Your name is Daniel"
# fi

# IF-ELSE 
# if [ "${NAME}" == "Daniel" ]
# then
#     echo "You are the village Chief!!"
# else
#     echo "Come on you are not the village chief!!"
# fi

#ELSE-IF (elif)
# if [ "${NAME}" == "Daniel" ]
# then
#     echo "You are the real village Chief!!"
# elif [ "${NAME}" == "Emman" ]
# then
#     echo "You are the old and former village Chief!!"
# else
#     echo "Come on you are not and have never been the village chief!!"
# fi

###############
# val1 -eq val2 Returns  true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 > val2
# val1 -ge val2 Returns true if val1 >= val2
# val1 -lt val2 Returns true if val1 < val2
# val1 -le val2 Returns true if val1 <= val2
############### 

# NUM1=20
# NUM2=20

# if [ "${NUM1}" -gt "${NUM2}" ]
# then
#     echo "i think you nailed the whole thing!!"
# elif [ "${NUM1}" -eq "${NUM2}" ]
# then
#     echo "please try again dummy!!"
# fi

###################
# -d file =True if the file is a directory 
# -e file =True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file =True if the provided string is a file
# -g file =True if the group id is set on a file
# -r file =True if the file is readable
# -s file =True if the file has a non zero size
# -u file = True if the user id is set on a file
# -w file =True if the file is writeable
# -x file =True if the file is an executable one
###################


# FILE CONDITIONS
FILE="test.text"

if [ -d "${FILE}" ]
then
    echo "I see the file ${FILE}"
else
    echo "Naahh you must be dreaming!!"
fi