require_relative 'slow_type'
require_relative 'prediction_generator'

SlowType.creep_type("Welcome to the digital fortune teller")
SlowType.creep_type("What is your first name?")
SlowType.prompt
first_name = $stdin.gets.chomp.capitalize

SlowType.creep_type("Thank you #{first_name}. Now, what is your last name?")
SlowType.prompt
last_name = $stdin.gets.chomp.capitalize

SlowType.creep_type("And how old are you?")
SlowType.prompt
user_age = Integer($stdin.gets.chomp)

SlowType.creep_type("And what is the number of the month in which you were born?")
SlowType.prompt
birth_month = Integer($stdin.gets.chomp)

SlowType.creep_type("Now, of the ROYGBIV colors, which is your favorite?")
SlowType.prompt
favorite_color = $stdin.gets.chomp.downcase

SlowType.creep_type("Last question, how many siblings do you have?")
SlowType.prompt
sibling_number = Integer($stdin.gets.chomp)

retirement_years = String(PredictionGenerator.generate_retirement(user_age)) + " years"

vacation_home = PredictionGenerator.generate_city(sibling_number)

transport_mode = PredictionGenerator.generate_transport(favorite_color)

bank_balance = PredictionGenerator.generate_bank_balance(birth_month)

SlowType.creep_type(PredictionGenerator.final_prediction(first_name, last_name, retirement_years, bank_balance, vacation_home, transport_mode))

SlowType.creep_type("farewell...")
