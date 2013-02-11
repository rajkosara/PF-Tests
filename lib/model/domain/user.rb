class Model::Domain::User
  attr_accessor :username
  attr_accessor :password

  def initialize
    @username = ""
    @password = ""
    self
  end

  def set_username username
    @username = username
  end

  def set_password password
    @password = password
  end

  def set_email email
    @email = email
  end
end