class AddReference < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :users, index: true, foreign_key: true
  end
end
