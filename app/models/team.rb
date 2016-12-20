class Team
  attr_accessor :name, :motto, :heroes

  ALL = []

  def initialize(attributes)
    attributes.each do |key,value|
      self.send("#{key}=",value)
    end
    ALL << self
  end

end
