module InputChecker
  extend SlowType

  def self.name_check(name)
    loop do
      break unless name.empty?

      creep_type("Please don't just hit enter...")
      name = prompt_input { gets.chomp }
    end

    name.capitalize
  end

  def self.month_check(birth_month)
    birth_month = int_check(birth_month, 'What is the NUMBER of the month you were born in?')

    loop do
      break if birth_month > 0 && birth_month < 13

      creep_type('Please enter a valid number for the month in which you were born')
      birth_month = prompt_input { int_check(gets.chomp) }
    end
    birth_month.to_i
  end

  def self.sibling_check(sibling_number)
    sibling_number = int_check(sibling_number, 'How many siblings do you have?')
    loop do
      break if sibling_number >= 0 && sibling_number < 30

      creep_type('I highly doubt that... please enter a more believable number')
      sibling_number = prompt_input { int_check(gets.chomp) }
    end
    sibling_number.to_i
  end

  def self.age_check(user_age)
    user_age = int_check(user_age, 'How old are you?')
    loop do
      break if (user_age > 0) && (user_age < 120)

      creep_type('ha ha, very funny... please enter a real age.')
      user_age = prompt_input { int_check(gets.chomp) }
    end
    user_age.to_i
  end

  def self.color_check(color)
    roygbiv = %w[red orange green blue indigo violet]

    loop do
      break if roygbiv.include? color.downcase

      creep_type('Please enter one of the ROYGBIV colors (red, orange, yellow, green, blue, indigo, or violet)')
      creep_type('What is your favorite ROYGBIV color?')
      color = prompt_input { gets.chomp }
    end

    color.downcase
  end

  def self.int_check(i, q = '')
    loop do
      break if (result = begin
                         Integer(i)
                         rescue StandardError
                           false
                       end) != false

      creep_type('You must enter an integer. Please try again')
      creep_type(q)
      i = prompt_input { gets.chomp }
    end
    i.to_i
  end

  def self.prompt_input
    print '> '
    yield
  end

end
