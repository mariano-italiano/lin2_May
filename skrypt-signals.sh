#!/bin/bash

# Przechwytywanie sygnałów z poziomu skryptu

LOGFILE=/tmp/skrypt.signals
COUNT=0
COUNT2=0

function handle_sigint {
	COUNT=$(( $COUNT + 1 ))
	echo
	if [[ $COUNT > 0 ]]; then
		echo "Wystąpił sygnał SIGINT(2) po raz $COUNT" >> $LOGFILE
	fi
}


function handle_sigterm {
	COUNT2=$(( $COUNT2 + 1))
	if [[ $COUNT2 > 0 ]]; then
		echo "Wystąpił sygnał SIGTERM(15) po raz $COUNT2" >> $LOGFILE
	fi
}

trap handle_sigterm SIGTERM
trap handle_sigint SIGINT 

while true
do
	echo "Spimy 5 sekund"
	sleep 5
done
