class CreateBatches < ActiveRecord::Migration[5.2]
  def change
    create_table :batches do |t|
      t.string :name
      t.string :desc
      t.integer :amount
      t.integer :price
      t.belongs_to :farmer, foreign_key: true

      t.timestamps
    end
  end
end
