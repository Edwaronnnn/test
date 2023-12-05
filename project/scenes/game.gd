func guess_letter(letter):
	if targetWord.find(letter) == -1:
		attemptsLeft -= 1
	else:
		# The guessed letter is in the target word.
		# Find all occurrences of the letter in the target word.
		var positions = []
		var index = targetWord.find(letter)
		while index != -1:
			positions.append(index)
			index = targetWord.find(letter, index + 1)
		
		# Convert guessedWord to an array of characters for modification.
		var guessedWordArray = list(guessedWord)  # Convert the string to an array of characters.
		
		# Update the guessedWord with the correct letter in the right positions.
		for pos in positions:
			guessedWordArray[pos] = letter

		# Convert the modified array back to a string.
		guessedWord = ''.join(guessedWordArray)  # Convert the array back to a string.
	
	# Update the guessed word display
	guessedWordLabel.text = guessedWord
	
	checkGameStatus()
