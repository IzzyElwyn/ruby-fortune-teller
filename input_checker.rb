module InputChecker
  include SlowType

  def self.int_check(i, q)
    loop do
      break if (result = begin
                         Integer(i)
                         rescue StandardError
                           false
                       end) != false

      SlowType.creep_type("You must enter an integer. Please try again\n")
      SlowType.creep_type(q)
      SlowType.prompt
      i = gets.chomp
    end
    i.to_i
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
