class CreateProyectoUsers < ActiveRecord::Migration
  def change
    create_table :proyecto_users do |t|
      t.integer :proyecto_id
      t.integer :user_id

      t.timestamps
    end
  end
end
