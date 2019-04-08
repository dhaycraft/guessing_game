all: README.md
README.md:
	touch README.md
	echo "<h1> Guessing Game Unix Workbench </h1>" > README.md
	echo "Date and time make run:" >> README.md
	date >> README.md
	echo "<br> Number of files in repository:" >> README.md
	ls -l | grep -v ^l | wc -l >> README.md
	echo "<br> Number of lines by file:" >> README.md
	wc -l guessinggame.sh >> README.md
	wc -l makefile >> README.md

clean:
	rm README.md
