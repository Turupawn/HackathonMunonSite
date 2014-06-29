module ApplicationHelper

def estoyInscrito evento_id
  return InscripcionEvento.where(:evento_id=>evento_id, :user_id=>current_user.id)[0]!=nil
end

end
