class Evento < ActiveRecord::Base
  has_many :proyectos
  has_many :inscripcion_eventos
end
