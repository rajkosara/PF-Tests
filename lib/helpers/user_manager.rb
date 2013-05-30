class Helpers::UserManager
  def self.get_admin_user
    user = Model::Domain::User.new
    user.username = user.set_username Helpers::Config["admin_username"]
    user.password = user.set_password Helpers::Config["admin_password"]
    user
  end

  def self.get_manager_user
    user = Model::Domain::User.new
    user.username = user.set_username Helpers::Config["manager_username"]
    user.password = user.set_password Helpers::Config["manager_password"]
    user
  end

  def self.get_examadmin_user
    user = Model::Domain::User.new
    user.username = user.set_username Helpers::Config["ExamAdmin_username"]
    user.password = user.set_password Helpers::Config["ExamAdmin_password"]
    user
  end

  def self.get_courseadmin_user
    user = Model::Domain::User.new
    user.username = user.set_username Helpers::Config["CourseAdmin_username"]
    user.password = user.set_password Helpers::Config["CourseAdmin_password"]
    user
  end

  def self.create_user
    user = Model::Domain::User.new
    user.username = user.set_username default_username
    user.password = user.set_password default_password
    user.email = user.set_email default_email
    user
  end

  private

  def self.default_username
    String.random 8
  end

  def self.default_password
    "Password_01"
  end

  def self.default_email
    "#{String.random(8)}@example.com"
  end
end