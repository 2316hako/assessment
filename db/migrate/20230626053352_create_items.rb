class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.integer :condition_id, null: false
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
