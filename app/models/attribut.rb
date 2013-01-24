class Attribut < ActiveRecord::Base
  attr_accessible :data_type, :klasse_id, :name

  belongs_to :klasse
  validates_presence_of :klasse
end
