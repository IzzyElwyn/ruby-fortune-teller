require_relative 'slow_type'

class InputChecker

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

end
