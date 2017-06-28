class Pirate
  attr_accessor :name, :weight, :height, :ships
  @@all = []
  def initialize(attr_hash)
    @name = attr_hash[:name]
    @weight = attr_hash[:weight]
    @height = attr_hash[:height]
    @ships = attr_hash[:ships].map do |ship_hash|
      Ship.new(ship_hash)
    end
    @@all << self
  end

  def self.all
    @@all
  end

end
