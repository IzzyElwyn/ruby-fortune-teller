module PredictionGenerator
  include SlowType
  def self.generate_retirement(user_age)
    if user_age % 2 > 0
      user_age + 6
    else
      user_age + 3
    end
  end

  def self.generate_city(sibling_number)
    case sibling_number
    when 0
      'Michigan City, IN'
    when 1
      'Monterey, CA'
    when 2
      'Venice, Italy'
    when 3
      'Seoul, Korea'
    when 4
      'Dublin, Ireland'
    else
      'The Darvaza Gas Crater, Turkmenistan'
    end
  end

  def self.generate_transport(favorite_color)
    case favorite_color
    when 'red'
      'scooter'
    when 'orange'
      'Uber'
    when 'yellow'
      'motorcycle'
    when 'green'
      'Prius'
    when 'blue'
      'Tesla'
    when 'indigo'
      'roller blades'
    when 'violet'
      'skateboard'
    else
      'penny-farthing'
    end
  end

  def self.generate_bank_balance(birth_month)
    if birth_month >= 6
      (birth_month * 2)**10
    else
      (birth_month * 3)**5
    end
  end

  def self.final_prediction(first_name, last_name, retirement_years, bank_balance, vacation_home, transport_mode)
    "#{first_name} #{last_name} will retire in #{retirement_years} with $#{bank_balance} in the bank, a vacation home in #{vacation_home} and travel by #{transport_mode}."
  end
end
