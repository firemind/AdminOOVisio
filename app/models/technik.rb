class Technik < ActiveRecord::Base
  attr_accessible :name
  has_many :klasses, class_name: 'Klasse'
end
