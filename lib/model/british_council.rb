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

  def create_blog
    Model::Page::CreateBlog.new
  end

  def create_faq
    Model::Page::CreateFaq.new
  end

  def create_general_info
    Model::Page::CreateGeneralInfo.new
  end

  def create_job
    Model::Page::CreateJob.new
  end

  def create_event
    Model::Page::CreateEvent.new
  end

  def press_release
    Model::Page::PressRelease.new
  end

  def blog
    Model::Page::Blog.new
  end

  def faq
    Model::Page::Faq.new
  end

  def general_info
    Model::Page::GeneralInfo.new
  end

  def job
    Model::Page::Job.new
  end

  def event
    Model::Page::Event.new
  end
  
  def home
    Model::Page::Home.new
  end
end