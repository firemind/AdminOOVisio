class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.string :name
      t.string :type
      t.string :img
      t.integer :pos_x
      t.integer :pos_y
      t.integer :technik_id

      t.timestamps
    end
  end
end
