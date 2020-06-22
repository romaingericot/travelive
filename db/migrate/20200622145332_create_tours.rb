class CreateTours < ActiveRecord::Migration[6.0]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :city
      t.string :country
      t.integer :capacity
      t.date :date
      t.time :time
      t.integer :duration
      t.text :description
      t.string :language
      t.string :category
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
