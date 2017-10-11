readme.md: guessinggame.sh
	echo "The title of the project is guessinggame.sh" > readme.md
	echo "Make was run on $(shell date) " >> readme.md
	echo "The guessinggame.sh script contains the following number of lines:" >> readme.md
	wc -l guessinggame.sh| egrep -o "[0-9]+" >> readme.md

