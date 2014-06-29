class CreateVotacions < ActiveRecord::Migration
  def change
    create_table :votacions do |t|
      t.integer :proyecto_id
      t.integer :user_id
      t.integer :valor

      t.timestamps
    end
  end
end
