class Search < ActiveRecord::Base
  
  def users
    @users ||= find_users
  end

  def self.for(id_search, name, surname, old_surname, nickname)

    # escape for security
    name        = "%#{name}%"
    surname     = "%#{surname}%"
    old_surname = "%#{old_surname}%"
    nickname    = "%#{nickname}%"

    users = User.order(:name)
    users = users.where(id: id_search) if id_search.present?
    users = users.where("name like ?", "%#{name}%") if name.present?
    users = users.where("surname like ?", "%#{surname}%") if surname.present?
    users = users.where("old_surname like ?", "%#{old_surname}%") if old_surname.present?
    users = users.where("nickname like ?", "%#{nickname}%") if nickname.present?
  end

end
