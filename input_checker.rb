module InputChecker
  include SlowType

  def self.int_check(i, q = '')
    loop do
      break if (result = begin
                         Integer(i)
                         rescue StandardError
                           false
                       end) != false

      SlowType.creep_type("You must enter an integer. Please try again")
      SlowType.creep_type(q)
      SlowType.prompt
      i = gets.chomp
    end
    i.to_i
  end

  def self.month_check(birth_month)
    birth_month = int_check(birth_month, 'What is the NUMBER of the month you were born in?')

    loop do
      break if birth_month > 0 && birth_month < 13

      SlowType.creep_type('Please enter a valid number for the month in which you were born')
      SlowType.prompt
      birth_month = int_check(gets.chomp)
    end
    birth_month.to_i
  end

  def self.sibling_check(sibling_number)
    sibling_number = int_check(sibling_number, 'How many siblings do you have?')
    loop do
      break if sibling_number >= 0 && sibling_number < 30

      SlowType.creep_type('I highly doubt that... please enter a more believable number')
      SlowType.prompt
      sibling_number = int_check(gets.chomp)
    end
    sibling_number.to_i
  end

  def self.age_check(user_age)
    user_age = int_check(user_age, 'How old are you?')
    loop do
      break if (user_age > 0) && (user_age < 120)

      SlowType.creep_type('ha ha, very funny... please enter a real age.')
      SlowType.prompt
      user_age = int_check(gets.chomp)
    end
    user_age.to_i
  end

  def self.color_check(color, reprompt)
    roygbiv = %w[red orange green blue indigo violet]

    loop do
      break if roygbiv.include? color.downcase

      SlowType.creep_type('Please enter one of the ROYGBIV colors (red, orange, yellow, green, blue, indigo, or violet)')
      SlowType.creep_type(reprompt)
      SlowType.prompt
      color = gets.chomp
    end

    color.downcase
  end
end
