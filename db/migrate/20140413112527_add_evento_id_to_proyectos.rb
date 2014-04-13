class AddEventoIdToProyectos < ActiveRecord::Migration
  def change
    add_column :proyectos, :evento_id, :integer
  end
end
