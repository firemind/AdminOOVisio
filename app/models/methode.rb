class Methode < ActiveRecord::Base
  attr_accessible :name, :klasse_id

  belongs_to :klasse
  validates_presence_of :klasse
  has_many :activities
end
