extends Node2D

# Variables for game logic
var targetWord := "ARTERI"
var guessedWord := ""
var maxAttempts := 6
var attemptsLeft := maxAttempts
var pictureStage := 0
var pictureTextures : Array

@onready var countdown_timer = $Timer
@onready var timer_label = $LabelTimer




var guessedWordLabel : Label


func _ready():
	


	pictureTextures = [
		preload("res://assets/images/clarity0.jpg"),
		preload("res://assets/images/mayoi_spiralgeass.png"),
		preload("res://icon.svg"),
		# Add more stages as needed
	]
	
	$Sprite.texture = pictureTextures[pictureStage]
	guessedWordLabel = $GuessedWordLabel  # Replace "LabelNodeName" with the actual name of your Label node in the scene

	# Initialize guessedWord with underscores for each letter in targetWord
	guessedWord = ""
	for i in range(targetWord.length()):
		if targetWord[i] == " ":
			guessedWord += " "
		else:
			guessedWord += " "
	var formattedText = ""
	for i in range(guessedWord.length()):
		if guessedWord[i] == " ":
			formattedText += " _ "
		else:
			formattedText += guessedWord[i]
	guessedWordLabel.text = formattedText

	# Display the initial state of guessedWord with underlines



# Called when the node enters the scene tree for the first time.

# Handle button presses for guessing a letter.
func _on_a_pressed():
	guess_letter("A")
func _on_b_pressed():
	guess_letter("B")
func _on_c_pressed():
	guess_letter("C")
func _on_d_pressed():
	guess_letter("D")
func _on_e_pressed():
	guess_letter("E")
func _on_f_pressed():
	guess_letter("F")
func _on_g_pressed():
	guess_letter("G")
func _on_h_pressed():
	guess_letter("H")
func _on_i_pressed():
	guess_letter("I")
func _on_j_pressed():
	guess_letter("J")
func _on_k_pressed():
	guess_letter("K")
func _on_l_pressed():
	guess_letter("L")
func _on_m_pressed():
	guess_letter("M")
func _on_n_pressed():
	guess_letter("N")
func _on_o_pressed():
	guess_letter("O")
func _on_p_pressed():
	guess_letter("P")
func _on_q_pressed():
	guess_letter("Q")

func _process(delta):
	$ChanceLeft.text = "Chances Left: " + str(attemptsLeft)
func _on_r_pressed():
	guess_letter("R")


func _on_s_pressed():
	guess_letter("S")


func _on_t_pressed():
	guess_letter("T")


func _on_u_pressed():
	guess_letter("U")


func _on_v_pressed():
	guess_letter("V")


func _on_w_pressed():
	guess_letter("W")


func _on_x_pressed():
	guess_letter("X")


func _on_y_pressed():
	guess_letter("Y")


func _on_z_pressed():
	guess_letter("Z")
func _on_space_pressed():
	guess_letter(" ")


# Define other button press functions for other letters similarly.

# Function to guess a letter.
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
		
		# Update the guessedWord with the correct letter in the right positions.
		var newGuessedWord = ""
		for i in range(targetWord.length()):
			if i in positions:
				newGuessedWord += letter
			else:
				if i < guessedWord.length():
					newGuessedWord += guessedWord[i]
				else:
					newGuessedWord += " "  # If the guessedWord is shorter, add a space
		guessedWord = newGuessedWord

		# Update the guessed word display with underlines for blank spaces
		var formattedText = ""
		for i in range(guessedWord.length()):
			if guessedWord[i] == " ":
				formattedText += " _ "
			else:
				formattedText += guessedWord[i]
		guessedWordLabel.text = formattedText

		# Check if the player has won
		if targetWord == guessedWord:
			game_over("Congratulations! You guessed the word.")
		else:
			# Increment the pictureStage and update the picture
			pictureStage += 1
			if pictureStage < pictureTextures.size():
				$Sprite.texture = pictureTextures[pictureStage]
	
	# Check if the game is over (win or lose)
	checkGameStatus()



# Check if the game is over (win or lose).
func checkGameStatus():
	if attemptsLeft == 0:
		
		game_over("You lost! The word was: " + targetWord)
	elif targetWord == guessedWord:
		# Player won
		game_over("Congratulations! You guessed the word.")

# Display a game over message and reset the game.
func game_over(message):
	if message == "Congratulations! You guessed the word.":
		get_tree().change_scene_to_file("res://scenes/control.tscn")
	
	elif message == "You lost! The word was: " + targetWord:
		get_tree().change_scene_to_file("res://game_over_1.tscn")





	



