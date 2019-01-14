module InputChecker
  include SlowType

  def self.int_check(i, q)
    loop do
      break if (result = Integer(i) rescue false) != false
      SlowType.creep_type("You must enter an integer. Please try again\n")
      SlowType.creep_type(q)
      SlowType.prompt
      i = gets.chomp
      end
    return i.to_i
  end

  def self.color_check(color, reprompt)
    roygbiv = ["red", "orange", "green", "blue", "indigo", "violet"]

    loop do
      break if roygbiv.include? color.downcase
      SlowType.creep_type("Please enter one of the ROYGBIV colors (red, orange, yellow, green, blue, indigo, or violet)")
      SlowType.creep_type(reprompt)
      SlowType.prompt
      color = gets.chomp
    end

    return color.downcase

  end

end
