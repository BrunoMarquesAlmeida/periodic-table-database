#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t  -c"

if [[ -z $1 ]]
then
    echo "Please provide an element as an argument."
else
    if [[ $(($1)) != $1 ]]
    then
        ELEMENT_SELECTED=$($PSQL "SELECT * FROM elements LEFT JOIN properties USING(atomic_number) LEFT JOIN types USING(type_id) WHERE symbol='$1' OR name='$1'")
    else
        ELEMENT_SELECTED=$($PSQL "SELECT * FROM elements LEFT JOIN properties USING(atomic_number) LEFT JOIN types USING(type_id) WHERE atomic_number='$1'")
    fi
    
    echo "$ELEMENT_SELECTED" | while read TYPE_ID BAR ATOMIC_NUMBER BAR SYMBOL BAR NAME BAR TYPE BAR ATOMIC_MASS BAR MELTING_POINT BAR BOILING_POINT REST
    do
        echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
    done
fi

