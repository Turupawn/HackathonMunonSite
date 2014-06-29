class CreateInscripcionEventos < ActiveRecord::Migration
  def change
    create_table :inscripcion_eventos do |t|
      t.integer :user_id
      t.integer :evento_id

      t.timestamps
    end
  end
end
