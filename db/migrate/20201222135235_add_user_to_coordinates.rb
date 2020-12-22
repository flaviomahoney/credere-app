class AddUserToCoordinates < ActiveRecord::Migration[6.0]
  def change
    add_reference :coordinates, :user, null: false, foreign_key: true
  end
end
