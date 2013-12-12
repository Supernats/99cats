class Cat < ActiveRecord::Base
  COLORS = %w{red orange yellow green blue purple brown black calico chartreuse}
  attr_accessible :age, :birth_date, :color, :name, :sex

  validates :age, :birth_date, :color, :name, :sex, :presence => true
  validates :age, :numericality => true
  validates :color, :inclusion => { :in => COLORS }
  validates :sex, :inclusion => { :in => ["M", "F"] }

  def self.possible_colors
    COLORS
  end

end