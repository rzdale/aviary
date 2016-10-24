class CreateBirds < ActiveRecord::Migration[5.0]
  def change
    create_table :birds do |t|
      t.string :name, null:false
      t.string :conservation_status
      t.string :order
      t.string :family
      t.string :genus
      t.timestamps null:false
    end
  end
end
