class Model::BritishCouncil
  def login
    Model::Page::Login.new
  end

  def administration
    Model::Page::Administration.new
  end

  def create_faq
    Model::Page::CreateFaq.new
  end

  def create_course
    Model::Page::CreateCourse.new
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

  def create_landing_page
    Model::Page::CreateLandingPage.new
  end

  def add_image
    Model::Page::AddImage.new
  end

  def add_user
    Model::Page::AddUser.new
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

  def landing_page
    Model::Page::LandingPage.new
  end

  def user
    Model::Page::User.new
  end

  def user_list
    Model::Page::UserList.new
  end

  def edit_faq_settings
    Model::Page::EditFaqSetting.new
  end

  def course
    Model::Page::Course.new
  end

  def image
    Model::Page::Image.new
  end
  
  def home
    Model::Page::Home.new
  end

  def translate
    Model::Page::Translate.new
  end

  def mobile_course
    Model::Page::MobileCourse.new
  end
end