class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.integer :klasse_id
      t.string :from
      t.string :to
      t.integer :src_id
      t.string :cardinality
      t.integer :technik_id

      t.timestamps
    end
  end
end
