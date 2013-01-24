class CreateExtensions < ActiveRecord::Migration
  def change
    create_table :extensions do |t|
      t.integer :klasse_id
      t.string :from
      t.string :to
      t.integer :src_id
      t.integer :technik_id

      t.timestamps
    end
  end
end
