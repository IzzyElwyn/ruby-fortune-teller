module SlowType
  def self.creep_type(text)
    text = text.split('')
    text.each do |l|
      # sleep 0.08
      print l
    end
    print "\n"
  end

  def self.prompt
    print '> '
  end
end
