Given /^I navigate to (?:an|a|the) (.*) page$/ do |page_name|
  @british_council = Model::BritishCouncil.new
  case page_name
  when 'login'
    @british_council.login.load
  when 'home'
    @british_council.home.load
  when 'create home page'
    @british_council.create_home_page.load
  when 'create press release' 
    @british_council.create_press_release.load
    step "I create a press release object"
  when 'create blog'
    @british_council.create_blog.load
    step "I create a blog post object"
  when 'create faq'
    @british_council.create_faq.load
    step "I create a faq object"
  when 'create general info'
    @british_council.create_general_info.load
    step "I create a general info object"
  when 'create job'
    @british_council.create_job.load
    step "I create a job object"
  when 'create event'
    @british_council.create_event.load
    step "I create a event object"
  when 'create landing page'
    step "I create a landing page object"
    @british_council.create_landing_page.load
  when 'create partner'
    @british_council.create_partner.load
    step 'I create a partner object'
  when 'edit faq settings'
    @british_council.edit_faq_settings.load
  when 'add image'
    @british_council.add_image.load
    step "I create a image object"
  when 'add document'
    @british_council.add_document.load
    step 'I create a document object'
  when 'add video'
    @british_council.add_video.load
    step 'I create a video object'    
  when 'created published landing'
    visit @landing_page.url
  when 'created course'
    visit @created_course_url
  when 'create course'
    @british_council.create_course.load
    step "I create a course object"
  when 'create teaching centre'
    @british_council.create_teaching_centre.load
    step 'create a teaching centre object'
  when 'add user'
    @british_council.add_user.load
    step "I create a new user"
  when 'user list'
    @british_council.user_list.load
  when 'site information'
    @british_council.site_info.load
  when 'create ielts'
    @british_council.create_ielts.load
    step 'create a ielts object'
  when 'add promo link'
    @british_council.add_promo_link.load
  when 'teaching centre listings'
    @british_council.teaching_centre_listing_page.load
  when 'create image promotion'
    @british_council.create_image_promotion.load
    step 'I create a image promotion object'
  when 'create text promotion'
    @british_council.create_text_promotion.load
    step 'I create a text promotion object'
  when 'add social media link'
    @british_council.add_social_media_link.load
  when 'create contact us'
    @british_council.create_contact_us.load
    step 'I create a contact us object'
  else raise "Haven't mapped the '#{page_name}' page"
  end
end

Given /^I am using a mobile device$/ do
  #the below has been commented out due to the fact that it opens up a second browser for some reason. I will look to fix later
  #Capybara.current_driver = :iphone_chrome
  #Capybara.use_default_driver
  Helpers::Browser.resize_window
end

When /^I navigate to the created course page with the custom landing page url$/ do
  visit "#{Helpers::Config['korea_site_root']}/#{@landing_page.alternate_filename.downcase.gsub(" ","-").gsub(":","")}/#{@course.title.downcase.gsub(" ","-").gsub(":","")}"
end