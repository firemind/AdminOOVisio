class CreateTechniks < ActiveRecord::Migration
  def change
    create_table :techniks do |t|
      t.string :name

      t.timestamps
    end
  end
end
