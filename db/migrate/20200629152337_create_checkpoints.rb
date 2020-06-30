class CreateCheckpoints < ActiveRecord::Migration[6.0]
  def change
    create_table :checkpoints do |t|
      t.string :name
      t.text :description
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :tour, null: false, foreign_key: true

      t.timestamps
    end
  end
end
