class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    change_column(:flights, :starttime, :date)
  end
end
