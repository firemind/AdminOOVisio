class AddMethodeKlasseId < ActiveRecord::Migration
  def up
    add_column :methodes, :klasse_id, :integer
  end

  def down
  end
end
