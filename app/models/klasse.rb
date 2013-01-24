class Klasse < ActiveRecord::Base
  attr_accessible :name, :pos_x, :pos_y, :klasse_type, :technik_id, :img

  belongs_to :technik
  validates_presence_of :technik
  has_many :attributs
  has_many :methodes
end
