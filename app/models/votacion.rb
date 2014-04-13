class Votacion < ActiveRecord::Base
  has_one :user
  has_one :proyecto
end
