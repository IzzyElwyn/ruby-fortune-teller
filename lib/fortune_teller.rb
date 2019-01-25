require_relative 'slow_type'
require_relative 'prediction_generator'
require_relative 'input_checker'

module FortuneTeller
  extend SlowType
  def self.run
    creep_type('Welcome to the digital fortune teller')
    creep_type('What is your first name?')
    first_name = InputChecker.prompt_input { gather_name }

    creep_type("Thank you #{first_name}. Now, what is your last name?")
    last_name = InputChecker.prompt_input { gather_name }

    creep_type('And how old are you?')
    user_age = InputChecker.prompt_input { gather_age }

    creep_type('And what is the number of the month in which you were born?')
    birth_month = InputChecker.prompt_input { gather_birth_month }

    creep_type('Now, of the ROYGBIV colors, which is your favorite?')
    favorite_color = InputChecker.prompt_input { gather_favorite_color }

    creep_type('Last question, how many siblings do you have?')
    sibling_number = InputChecker.prompt_input { gather_sibling_number }

    retirement_years = String(PredictionGenerator.generate_retirement(user_age)) + ' years'
    vacation_home = PredictionGenerator.generate_city(sibling_number)
    transport_mode = PredictionGenerator.generate_transport(favorite_color)
    bank_balance = PredictionGenerator.generate_bank_balance(birth_month)

    creep_type(PredictionGenerator.final_prediction(first_name, last_name, retirement_years, bank_balance, vacation_home, transport_mode))

    creep_type('farewell...')
  end

  def self.gather_name
    InputChecker.name_check(gets.chomp)
  end

  def self.gather_age
    InputChecker.age_check(gets.chomp)
  end

  def self.gather_birth_month
    InputChecker.month_check(gets.chomp)
  end

  def self.gather_favorite_color
    InputChecker.color_check(gets.chomp)
  end

  def self.gather_sibling_number
    InputChecker.sibling_check(gets.chomp)
  end
end
