class RenameType < ActiveRecord::Migration
  def up
    rename_column :klasses, :type, :klasse_type
  end

  def down
  end
end
