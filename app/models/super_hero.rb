class SuperHero
  attr_accessor :name, :power, :bio

  ALL = []

  def initialize(attributes)
    attributes.each do |key,value|
      self.send("#{key}=",value)
    end
    ALL << self
  end

  def self.all
    ALL
  end

end
