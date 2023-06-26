class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.integer :condition_id
      t.integer :user
      t.timestamps
    end
  end
end
