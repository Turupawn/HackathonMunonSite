class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :votacions, :usuario_id, :user_id
  end
end
