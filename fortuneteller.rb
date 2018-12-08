puts "Welcome to the digital fortune teller"
puts "What is your first name?"
first_name = gets.chomp
first_name.capitalize!

  puts "Thank you #{first_name}. Now, what is your last name?"
last_name = gets.chomp
last_name.capitalize!

  puts "And how old are you?"
user_age = Integer(gets.chomp)

puts "And what is the number of the month in which you were born?"
birth_month = Integer(gets.chomp)

puts "Now, of the ROYGBIV colors, which is your favorite?"
favorite_color = gets.chomp
favorite_color.downcase!

  puts "Last question, how many siblings do you have?"
sibling_number = Integer(gets.chomp)

if user_age % 2 > 0
to_retirement_years = user_age + 5
else
  to_retirement_years = user_age - 4
end

retirement_years = "#{to_retirement_years} years"

if sibling_number == 0
vacation_home = "Michigan City, IN"
elsif sibling_number == 1
vacation_home = "Monterey, CA"
elsif sibling_number == 2
vacation_home = "Venice, Italy"
elsif sibling_number == 3
vacation_home = "Seoul, Korea"
elsif sibling_number >= 4
vacationHome = "Dublin, Ireland"
else
  vacation_home = "The Darvaza Gas Crater, Turkmenistan"
end

if favorite_color.eql? "red"
transport_mode = "scooter"
elsif favorite_color.eql? "orange"
transport_mode = "Uber"
elsif favorite_color.eql? "yellow"
transport_mode = "motorcycle"
elsif favorite_color.eql? "green"
transport_mode = "Prius"
elsif favorite_color.eql? "blue"
transport_mode = "Tesla"
elsif favorite_color.eql? "indigo"
transport_mode = "roller blades"
elsif favorite_color.eql? "violet"
transport_mode = "skateboard"
else
  transport_mode = "penny-farthing"
end

if birth_month >= 6 && birth_month <= 12
bank_balance = (birth_month * 2) ** 10
elsif birth_month < 6 && birth_month > 0
bank_balance = (birth_month * 3) ** 5
else
  bank_balance = 0.00
end

puts "#{first_name} #{last_name} will retire in #{retirement_years} with $#{bank_balance} in the bank, a vacation home in #{vacation_home} and travel by #{transport_mode}."

puts "farewell..."
