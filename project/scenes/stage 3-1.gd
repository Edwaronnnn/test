extends Node2D

# Variables for game logic
var targetWord := "TRAKEA"
var guessedWord := ""
var maxAttempts := 5
var attemptsLeft := maxAttempts
var pictureStage := 0
var pictureTextures : Array
@onready var countdown_timer: Timer = $StarTimer






var guessedWordLabel : Label


func _ready():
	countdown_timer.start()



	

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

func time_left_to_live():
	var time_left = countdown_timer.time_left
	var second = int(time_left) % 60
	return [second]

# Called when the node enters the scene tree for the first time.

# Handle button presses for guessing a letter.
func _on_a_pressed():
	$click.play()
	guess_letter("A")
func _on_b_pressed():
	$click.play()
	guess_letter("B")
func _on_c_pressed():
	$click.play()
	guess_letter("C")
func _on_d_pressed():
	$click.play()
	guess_letter("D")
func _on_e_pressed():
	$click.play()
	guess_letter("E")
func _on_f_pressed():
	$click.play()
	guess_letter("F")
func _on_g_pressed():
	$click.play()
	guess_letter("G")
func _on_h_pressed():
	$click.play()
	guess_letter("H")
func _on_i_pressed():
	$click.play()
	guess_letter("I")
func _on_j_pressed():
	$click.play()
	guess_letter("J")
func _on_k_pressed():
	$click.play()
	guess_letter("K")
func _on_l_pressed():
	$click.play()
	guess_letter("L")
func _on_m_pressed():
	$click.play()
	guess_letter("M")
func _on_n_pressed():
	$click.play()
	guess_letter("N")
func _on_o_pressed():
	$click.play()
	guess_letter("O")
func _on_p_pressed():
	$click.play()
	guess_letter("P")
func _on_q_pressed():
	$click.play()
	guess_letter("Q")

func _process(delta):
	$ChanceLeft.text = "Kesempatan Tersisa: " + str(attemptsLeft)
func _on_r_pressed():
	$click.play()
	guess_letter("R")


func _on_s_pressed():
	$click.play()
	guess_letter("S")


func _on_t_pressed():
	$click.play()
	guess_letter("T")


func _on_u_pressed():
	$click.play()
	guess_letter("U")


func _on_v_pressed():
	$click.play()
	guess_letter("V")


func _on_w_pressed():
	$click.play()
	guess_letter("W")


func _on_x_pressed():
	$click.play()
	guess_letter("X")


func _on_y_pressed():
	$click.play()
	guess_letter("Y")


func _on_z_pressed():
	$click.play()
	guess_letter("Z")



# Define other button press functions for other letters similarly.

# Function to guess a letter.
func guess_letter(letter):
	if targetWord.find(letter) == -1:
		attemptsLeft -= 1
		$wrong.play()
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
			checkGameStatus()
		else:
			pass
			
	
	# Check if the game is over (win or lose)
	checkGameStatus()



# Check if the game is over (win or lose).
func checkGameStatus():
	if attemptsLeft == 0:
		var tree = get_tree()
		if tree:
			SceneTransition.change_scene("res://game_over_3.tscn")
	elif targetWord == guessedWord:
		# Player won
		Autoscript.chancesleft = attemptsLeft

		var tree = get_tree()
		if tree and attemptsLeft <= 1 :
			SceneTransition.change_scene("res://1 star - 3.tscn")
		elif tree and attemptsLeft <= 3 :
			SceneTransition.change_scene("res://2  star - 3.tscn")
		elif tree and attemptsLeft <= 5 :
			SceneTransition.change_scene("res://3  star - 3.tscn")




