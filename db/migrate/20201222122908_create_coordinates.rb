class CreateCoordinates < ActiveRecord::Migration[6.0]
  def change
    create_table :coordinates do |t|
      t.string :movimentos
      t.integer :x
      t.integer :y
      t.string :face

      t.timestamps
    end
  end
end
