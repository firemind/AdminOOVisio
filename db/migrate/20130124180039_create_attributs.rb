class CreateAttributs < ActiveRecord::Migration
  def change
    create_table :attributs do |t|
      t.string :name
      t.string :data_type
      t.integer :klasse_id

      t.timestamps
    end
  end
end
