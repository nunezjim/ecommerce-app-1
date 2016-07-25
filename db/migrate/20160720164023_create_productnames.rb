class CreateProductnames < ActiveRecord::Migration
  def change
    create_table :productnames do |t|
      t.decimal :price
      t.string :image
      t.string :description

      t.timestamps null: false
    end
  end
end
