class Relation < ActiveRecord::Base
  attr_accessible :cardinality, :from, :klasse_id, :src_id, :to, :technik_id
end
