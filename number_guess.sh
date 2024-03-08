#!/bin/bash
NUMBER=$(( RANDOM %1000 + 1))
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read NAME

GAME(){
  read GUESSED_NUMBER

  if [[ $GUESSED_NUMBER -gt $NUMBER ]]
  then
    echo "It's lower than that, guess again:"
    GAME
  elif [[ $GUESSED_NUMBER -lt $NUMBER ]]
  then
    echo "It's higher than that, guess again:"
    GAME
  elif ! [[ $GUESSED_NUMBER =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    GAME
  else
    echo "You are correct!"
  fi
}

USERNAME=$($PSQL "SELECT user_id FROM users WHERE username='$NAME';")
if [[ -z $USERNAME ]]
then
  INSERT_USERNAME=$($PSQL "INSERT INTO users(username) VALUES('$NAME');")
  USERNAME=$($PSQL "SELECT user_id FROM users WHERE username='$NAME';")

  echo "Welcome, $NAME! It looks like this is your first time here."
else
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE user_id=$USERNAME;")
  GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id='$USERNAME';")

  echo Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.
fi

echo "Guess the secret number between 1 and 1000:"
GAME