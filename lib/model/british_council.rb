class Model::BritishCouncil
  def login
    Model::Page::Login.new
  end

  def create_home_page_endeavour
    Model::Page::CreateHomePageEndeavour.new
  end

  def create_home_page_conqueror
    Model::Page::CreateHomePageConqueror.new
  end

  def administration
    Model::Page::Administration.new
  end

  def create_faq
    Model::Page::CreateFaq.new
  end

  def create_press_release
    Model::Page::CreatePressRelease.new
  end

  def create_course
    Model::Page::CreateCourse.new
  end

  def create_general_info
    Model::Page::CreateGeneralInfo.new
  end

  def create_webform
    Model::Page::CreateWebform.new
  end

  def add_webform_component
    Model::Page::AddWebformComponent.new
  end

  def create_job
    Model::Page::CreateJob.new
  end

  def create_ielts
    Model::Page::CreateIelts.new
  end

  def create_partner
    Model::Page::CreatePartner.new
  end

  def create_image_promotion
    Model::Page::CreateImagePromotion.new
  end

  def create_text_promotion
    Model::Page::CreateTextPromotion.new
  end

  def create_event
    Model::Page::CreateEvent.new
  end

  def create_landing_page
    Model::Page::CreateLandingPage.new
  end

  def create_teaching_centre
    Model::Page::CreateTeachingCentre.new
  end

  def create_contact_us
    Model::Page::CreateContactUs.new
  end

  def add_image
    Model::Page::AddImage.new
  end

  def add_document
    Model::Page::AddDocument.new
  end

  def add_video
    Model::Page::AddVideo.new
  end

  def add_user
    Model::Page::AddUser.new
  end

  def faq
    Model::Page::Faq.new
  end

  def regional_language
    Model::Page::RegionalLanguage.new
  end

  def press_release
    Model::Page::PressRelease.new
  end

  def general_info
    Model::Page::GeneralInfo.new
  end

  def teaching_centre_listing_page
    Model::Page::TeachingCentreListingPage.new
  end

  def job
    Model::Page::Job.new
  end

  def contact_us
    Model::Page::ContactUs.new
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

  def image_promotion
    Model::Page::ImagePromotion.new
  end

  def text_promotion
    Model::Page::TextPromotion.new
  end

  def ielts
    Model::Page::Ielts.new
  end

  def image
    Model::Page::Image.new
  end

  def video
    Model::Page::Video.new
  end

  def document
    Model::Page::Document.new
  end

  def regional_settings
    Model::Page::RegionalSettings.new
  end
  
  def home
    Model::Page::Home.new
  end

  def translate
    Model::Page::Translate.new
  end

  def teaching_centre
    Model::Page::TeachingCentre.new
  end

  def partner
    Model::Page::Partner.new
  end

  def site_info
    Model::Page::SiteInfo.new
  end

  def mobile_course
    Model::Page::MobileCourse.new
  end

  def mobile_teaching_centre
    Model::Page::MobileTeachingCentre.new
  end

  def delete_page
    Model::Page::DeletePage.new
  end

  def add_promo_link
    Model::Page::AddPromoLink.new
  end

  def add_social_media_link
    Model::Page::AddSocialMediaLink.new
  end

  def manage_social_media_links
    Model::Page::ManageSocialMediaLinks.new
  end

  def cron_jobs
    Model::Page::CronJobs.new
  end

  def search_results
    Model::Page::SearchResults.new
  end

  def webform
    Model::Page::Webform.new
  end
end