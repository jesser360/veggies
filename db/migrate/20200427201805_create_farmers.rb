class CreateFarmers < ActiveRecord::Migration[5.2]
  def change
    create_table :farmers do |t|
      t.string :email
      t.string :name
      t.integer :location

      t.timestamps
    end
  end
end
