require_relative 'slow_type'
require_relative 'prediction_generator'
require_relative 'input_checker'

module FortuneTeller
  def self.run
    SlowType.creep_type('Welcome to the digital fortune teller')
    SlowType.creep_type('What is your first name?')
    first_name = gather_name

    SlowType.creep_type("Thank you #{first_name}. Now, what is your last name?")
    last_name = gather_name

    SlowType.creep_type('And how old are you?')
    user_age = gather_age

    SlowType.creep_type('And what is the number of the month in which you were born?')
    birth_month = gather_birth_month

    SlowType.creep_type('Now, of the ROYGBIV colors, which is your favorite?')
    favorite_color = gather_favorite_color

    SlowType.creep_type('Last question, how many siblings do you have?')
    sibling_number = gather_sibling_number

    retirement_years = String(PredictionGenerator.generate_retirement(user_age)) + ' years'
    vacation_home = PredictionGenerator.generate_city(sibling_number)
    transport_mode = PredictionGenerator.generate_transport(favorite_color)
    bank_balance = PredictionGenerator.generate_bank_balance(birth_month)

    SlowType.creep_type(PredictionGenerator.final_prediction(first_name, last_name, retirement_years, bank_balance, vacation_home, transport_mode))

    SlowType.creep_type('farewell...')
  end

  def self.gather_name
    SlowType.prompt
    InputChecker.name_check(gets.chomp)
  end

  def self.gather_age
    SlowType.prompt
    InputChecker.age_check(gets.chomp)
  end

  def self.gather_birth_month
    SlowType.prompt
    InputChecker.month_check(gets.chomp)
  end

  def self.gather_favorite_color
    SlowType.prompt
    InputChecker.color_check(gets.chomp)
  end

  def self.gather_sibling_number
    SlowType.prompt
    InputChecker.sibling_check(gets.chomp)
  end
end
