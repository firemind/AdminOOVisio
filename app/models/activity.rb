class Activity < ActiveRecord::Base
  attr_accessible :arg, :activity_type, :methode_id
  belongs_to :methode
  validates_presence_of :methode
end
