class Helpers::UserManager
  def self.get_admin_user
    user = Model::Domain::User.new
    user.username = user.set_username Helpers::Config["admin_username"]
    user.password = user.set_password Helpers::Config["admin_password"]
    user
  end

  def self.get_author_user
    user = Model::Domain::User.new
    user.username = user.set_username Helpers::Config["author_username"]
    user.password = user.set_password Helpers::Config["author_password"]
    user
  end

  def self.get_manager_user
    user = Model::Domain::User.new
    user.username = user.set_username Helpers::Config["manager_username"]
    user.password = user.set_password Helpers::Config["manager_password"]
    user
  end

  def self.get_producer_user
    user = Model::Domain::User.new
    user.username = user.set_username Helpers::Config["producer_username"]
    user.password = user.set_password Helpers::Config["producer_password"]
    user
  end

  def self.create_user
    user = Model::Domain::User.new
    user.username = user.set_username default_username
    user.password = user.set_password default_password
    user
  end

  private

  def self.default_username
    String.random 8
  end

  def self.default_password
    "Password_01"
  end
end