class Proyecto < ActiveRecord::Base
  belongs_to :evento
  belongs_to :user
  has_many :proyecto_users
  has_many :votacions
end
