class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
      t.rename :name, :username
    end
  end
end
