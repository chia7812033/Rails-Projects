class AddColumnEvent < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :detail, :text
  end
end
