class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
  end

  def self.sailors
    binding.pry
    joins(:boats)
    where(boats: Boat.sailboats)
  end

  def self.talented_seafarers
  end

  def self.non_sailors
  end

end
