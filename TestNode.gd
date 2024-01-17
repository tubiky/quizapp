extends Node2D

@onready var http_request = $HTTPRequest

var api_url = "https://opentdb.com/api.php"

func _ready():
	# Start the quiz when the scene is ready
	start_quiz()

func start_quiz():
	# Make an API request to get trivia questions
	var request_params = {
		"amount": 5,  # Number of questions
		"category": 9,  # General Knowledge category
		"difficulty": "medium",
		"type": "multiple"
	}

	make_api_request(request_params)

func make_api_request(params):
	# Set up the HTTPRequest
	var http_request = $HTTPRequest
	http_request.request_headers = ["Content-Type: application/x-www-form-urlencoded"]

	# Encode parameters for the GET request
	var query_string = "?"
	for param in params.keys():
		query_string += param + "=" + str(params[param]) + "&"
	
	api_url += query_string
	
	# Make the API request
	http_request.request(api_url)


func _on_http_request_request_completed(_result, response_code, _headers, body: PackedByteArray):
	# Handle the API response
	if response_code == 200:
		# Parse the JSON response
		var questions
		questions = body.get_string_from_ascii()
		
		
		
func process_quiz_questions(questions: Dictionary):
	# Display or use the quiz questions as needed
	for i in questions.size():
		print("Question ", i + 1, ": ", questions[i]["question"])
		print("Options: ", questions[i]["incorrect_answers"] + [questions[i]["correct_answer"]])
		print("Correct Answer: ", questions[i]["correct_answer"])
		print("\n")


