class Ship
  attr_accessor :name, :type, :booty
  @@all = []
  def initialize(attr_hash)
    @name = attr_hash[:name]
    @type = attr_hash[:type]
    @booty = attr_hash[:booty]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end
end
