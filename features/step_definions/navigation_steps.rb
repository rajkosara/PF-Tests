Given /^I navigate to (?:an|a|the) (.*) page$/ do |page_name|
  @british_council = Model::BritishCouncil.new
  case page_name
  when 'login'
    @british_council.login.load
  when 'home'
    @british_council.home.load
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
    @british_council.create_landing_page.load
    step "I create a landing page object"
  when 'edit faq settings'
    @british_council.edit_faq_settings.load
  else raise "Haven't mapped the '#{page_name}' page"
  end
end

Given /^I am using a mobile device$/ do
  #the below has been commented out due to the fact that it opens up a second browser for some reason. I will look to fix later
  #Capybara.current_driver = :iphone_chrome
  #Capybara.use_default_driver
  Helpers::Browser.resize_window
end