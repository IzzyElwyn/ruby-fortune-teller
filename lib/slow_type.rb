module SlowType
  def creep_type(text)
    text = text.split('')
    text.each do |l|
      # sleep 0.08
      print l
    end
    print "\n"
  end

end
