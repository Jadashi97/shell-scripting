# this is the shebang to initiate the shell
# !/bin/sh  



#ECHO COMMAND
echo Yaaa Manyang!

# VARIABLES
# Uppercase by convention 
# Letters, numbers, underscores

NAME="jabawoki"
echo "My name is, ${NAME}"


#USER INPUT
read -p "Enter your name: " NAME
echo "Hello $NAME, nice to meet you!"


#SIMPLE IF STATEMENT
if [ "${NAME}" == "Daniel" ]
then
echo "Your name is Daniel"
fi

# IF-ELSE 
if [ "${NAME}" == "Daniel" ]
then
    echo "You are the village Chief!!"
else
    echo "Come on you are not the village chief!!"
fi

#ELSE-IF (elif)
if [ "${NAME}" == "Daniel" ]
then
    echo "You are the real village Chief!!"
elif [ "${NAME}" == "Emman" ]
then
    echo "You are the old and former village Chief!!"
else
    echo "Come on you are not and have never been the village chief!!"
fi

###############
# val1 -eq val2 Returns  true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 > val2
# val1 -ge val2 Returns true if val1 >= val2
# val1 -lt val2 Returns true if val1 < val2
# val1 -le val2 Returns true if val1 <= val2
###############   

NUM1=20
NUM2=20

if [ "${NUM1}" -gt "${NUM2}" ]
then
    echo "i think you nailed the whole thing!!"
elif [ "${NUM1}" -eq "${NUM2}" ]
then
    echo "please try again dummy!!"
fi

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


# CASE STATEMENTS WHILE USING USER INPUT
read -p "Are you 21 or over? Y/N" ANSWER

# case syntax
case "${ANSWER}" in 
    [Yy] | [Yy][eE][sS])
        echo "You can grab a beer :)"
        ;;
    [nN] | [nN][oO])
        echo "Sorry, No drinking for you my friend"
        ;;
    *)
        echo "Please enter y/yes or no/no" #this is the default case as in js case-switch
        ;;
esac #closes out the the case 

#SIMPLE FOR LOOP 
NAMES="Lokose Daniel Ronald Stephen Winnie Jimmy Toni Tom"
for NAME in $NAMES
do
    echo "Hello $NAME"
done

# FOR LOOP TO RENAME FILE (problem solved if you have a huge file that needs renaming)
FILES=$(ls *.text)
NEW="new"
for FILE in ${FILES}
    do
        echo "Renaming ${FILE} to new-${FILE}"
        mv ${FILE} ${NEW}-${FILE}
done


# WHILE LOOP TO - READ THROUGH  A FILE LINE BY LINE

LINE=1
while read -r CURRENT_LINE
    do
        echo "$LINE: $CURRENT_LINE"
        ((LINE++))
done < "./new-test1.text"


# FUNCTIONS
function sayMayang(){
    echo "yaaaasalam!! Manyang get outta here!"
}

sayMayang

# FUNCTIONS WITH PARAMS

function wazzzzaa(){
    echo "ya zol!! I am $1 and I am on this $2 path forever untill i see and exceed $3 $4"
}

wazzzzaa "broke" "developer" "success" "PERIOD"


# USE-CASE TO SOLVE ANY PROBLEM OF DOING REPETITIVE WORK OVER AND OVER

# PROBLEM - CREATE A FOLDER AND WRITE TO A FILE
mkdir hello

touch "hello/dunia.txt"
echo "Sallam dunia and nas bet" >> "hello/dunia.txt"
echo "Created salllam/dunia.txt"\

example 2 - CREATE A FILE TO HOLD PLUGIN REF COMMANDS TO USE IN THE TERMINAL WITH ZSH

mkdir plugins
touch "plugins/zsh-pluggins.txt"
echo "main pluggins web-search, dirhistory, zsh_reload sudo" >> "plugins/zsh-pluggins.txt"
echo "Created pluggins for my zsh file"

