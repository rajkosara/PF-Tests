class Model::BritishCouncil
  def login
    Model::Page::Login.new
  end

  def administration
    Model::Page::Administration.new
  end

  def create_press_release
    Model::Page::CreatePressRelease.new
  end

  def press_release
    Model::Page::PressRelease.new
  end

  def home
    Model::Page::Home.new
  end
end