module PredictionGenerator
  def self.generate_retirement(user_age)
    if user_age % 2 > 0
      user_age + 5
    else
      user_age - 4
    end
  end

  def self.generate_city(sibling_number)
    if sibling_number == 0
      'Michigan City, IN'
    elsif sibling_number == 1
      'Monterey, CA'
    elsif sibling_number == 2
      'Venice, Italy'
    elsif sibling_number == 3
      'Seoul, Korea'
    elsif sibling_number >= 4
      'Dublin, Ireland'
    else
      'The Darvaza Gas Crater, Turkmenistan'
    end
  end

  def self.generate_transport(favorite_color)
    if favorite_color.eql? 'red'
      'scooter'
    elsif favorite_color.eql? 'orange'
      'Uber'
    elsif favorite_color.eql? 'yellow'
      'motorcycle'
    elsif favorite_color.eql? 'green'
      'Prius'
    elsif favorite_color.eql? 'blue'
      'Tesla'
    elsif favorite_color.eql? 'indigo'
      'roller blades'
    elsif favorite_color.eql? 'violet'
      'skateboard'
    else
      'penny-farthing'
    end
  end

  def self.generate_bank_balance(birth_month)
    if birth_month >= 6 && birth_month <= 12
      (birth_month * 2)**10
    elsif birth_month < 6 && birth_month > 0
      (birth_month * 3)**5
    else
      0.00
    end
  end

  def self.final_prediction(first_name, last_name, retirement_years, bank_balance, vacation_home, transport_mode)
    "#{first_name} #{last_name} will retire in #{retirement_years} with $#{bank_balance} in the bank, a vacation home in #{vacation_home} and travel by #{transport_mode}."
  end
end
