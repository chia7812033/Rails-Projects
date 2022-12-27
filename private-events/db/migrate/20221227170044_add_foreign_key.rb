class AddForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :creator_id, :integer
    remove_reference :events, :users
  end
end
