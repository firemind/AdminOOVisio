class AddMethodeIdActivites < ActiveRecord::Migration
  def up
    add_column :activities, :methode_id, :integer
  end

  def down
  end
end
