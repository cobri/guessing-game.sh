readme.txt: guessinggame.sh
	echo "The title of the project is guessinggame.sh" > readme.txt
	echo "Make was run on $(shell date) " >> readme.txt
	echo "The guessinggame.sh script contains the following number of entries:" >> readme.txt
	wc -l guessinggame.sh| egrep -o "[0-9]+" >> readme.txt

