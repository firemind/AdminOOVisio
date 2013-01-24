class CreateMethodes < ActiveRecord::Migration
  def change
    create_table :methodes do |t|
      t.string :name

      t.timestamps
    end
  end
end
